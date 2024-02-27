import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/selected_books/bookListType.dart';
import 'package:book_picker/features/selected_books/state.dart';
import 'package:book_picker/repository/common_storing_book/repository.dart';
import 'package:book_picker/repository/keyword/repository.dart';
import 'package:book_picker/repository/user_storing_book/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class SelectedBooksPageViewModel extends _$SelectedBooksPageViewModel {
  UserStoringBookRepo get userStoringBookRepo =>
      ref.read(userStoringBookRepoProvider.notifier);

  CommonStoringBookRepo get commonStoringBookRepo =>
      ref.read(commonStoringBookRepoProvider.notifier);

  KeywordRepo get keywordRepo => ref.read(keywordRepoProvider.notifier);

  @override
  FutureOr<SelectedBooksPageState> build(BookListType bookListType) async {
    final List<String?> userStoringBooks =
        await userStoringBookRepo.getUserStoringBooksISBN();
    switch (bookListType) {
      /// Fetched
      case BookListType.popularBooks:
        final List<Book> storingBooks = await commonStoringBookRepo
            .getCommonStoringBookOrderByAmount()
            .then(
              (value) => value
                  .map(
                    (e) => Book(
                      isbn: e.isbn,
                      title: e.title,
                      author: e.author,
                      imageUrl: e.imageUrl,
                      itemCaption: e.itemCaption,
                      itemPrice: e.itemPrice,
                      publisherName: e.publisherName,
                      storedTime: e.storedTime,
                    ),
                  )
                  .toList(),
            );
        final state = SelectedBooksPageState(
          userStoringBooks: userStoringBooks,
          bookListType: bookListType,
          storingBooks: storingBooks,
        );
        return state;

      /// 最近Select
      case BookListType.recentStoredBooks:
        final List<Book> storingBooks =
            await commonStoringBookRepo.getCommonStoringBookOrderByTime().then(
                  (value) => value
                      .map(
                        (e) => Book(
                          isbn: e.isbn,
                          title: e.title,
                          author: e.author,
                          imageUrl: e.imageUrl,
                          itemCaption: e.itemCaption,
                          itemPrice: e.itemPrice,
                          publisherName: e.publisherName,
                          storedTime: e.storedTime,
                        ),
                      )
                      .toList(),
                );
        final state = SelectedBooksPageState(
          userStoringBooks: userStoringBooks,
          bookListType: bookListType,
          storingBooks: storingBooks,
        );
        return state;

      /// たくさんSelect
      case BookListType.userStoringBooks:
        final List<Book> storingBooks =
            await userStoringBookRepo.getUserStoringBooks().then(
                  (value) => value
                      .map(
                        (e) => Book(
                          isbn: e.isbn,
                          title: e.title,
                          author: e.author,
                          imageUrl: e.imageUrl,
                          itemCaption: e.itemCaption,
                          itemPrice: e.itemPrice,
                          publisherName: e.publisherName,
                          affiUrl: e.affiUrl,
                          storedTime: e.storedTime,
                        ),
                      )
                      .toList(),
                );
        final state = SelectedBooksPageState(
          userStoringBooks: userStoringBooks,
          bookListType: bookListType,
          storingBooks: storingBooks,
        );
        return state;
    }
  }

  /// 再取得
  Future<void> refreshBookList(BookListType bookListType) async {
    final List<String?> userStoringBooks =
        await userStoringBookRepo.getUserStoringBooksISBN();
    try {
      _updateLoading(true); // ローディング状態に遷移

      switch (bookListType) {
        case BookListType.popularBooks:
          final List<Book> storingBooks = await commonStoringBookRepo
              .getCommonStoringBookOrderByAmount()
              .then(
                (value) => value
                    .map(
                      (e) => Book(
                        isbn: e.isbn,
                        title: e.title,
                        author: e.author,
                        imageUrl: e.imageUrl,
                        itemCaption: e.itemCaption,
                        itemPrice: e.itemPrice,
                        publisherName: e.publisherName,
                        storedTime: e.storedTime,
                      ),
                    )
                    .toList(),
              );
          state = AsyncData(SelectedBooksPageState(
            userStoringBooks: userStoringBooks,
            bookListType: bookListType,
            storingBooks: storingBooks,
          ));
          break;

        case BookListType.recentStoredBooks:
          final List<Book> storingBooks = await commonStoringBookRepo
              .getCommonStoringBookOrderByTime()
              .then(
                (value) => value
                    .map(
                      (e) => Book(
                        isbn: e.isbn,
                        title: e.title,
                        author: e.author,
                        imageUrl: e.imageUrl,
                        itemCaption: e.itemCaption,
                        itemPrice: e.itemPrice,
                        publisherName: e.publisherName,
                        storedTime: e.storedTime,
                      ),
                    )
                    .toList(),
              );
          state = AsyncData(SelectedBooksPageState(
            userStoringBooks: userStoringBooks,
            bookListType: bookListType,
            storingBooks: storingBooks,
          ));
          break;

        case BookListType.userStoringBooks:
          final List<Book> storingBooks =
              await userStoringBookRepo.getUserStoringBooks().then(
                    (value) => value
                        .map(
                          (e) => Book(
                            isbn: e.isbn,
                            title: e.title,
                            author: e.author,
                            imageUrl: e.imageUrl,
                            itemCaption: e.itemCaption,
                            itemPrice: e.itemPrice,
                            publisherName: e.publisherName,
                            affiUrl: e.affiUrl,
                            storedTime: e.storedTime,
                          ),
                        )
                        .toList(),
                  );
          state = AsyncData(SelectedBooksPageState(
            userStoringBooks: userStoringBooks,
            bookListType: bookListType,
            storingBooks: storingBooks,
          ));
          break;
      }

      _updateLoading(false); // ローディング状態を解除
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace); // エラーが発生した場合はエラー状態に遷移
    }
  }

  /// 本を保存
  Future<void> storePickedBook(Book book) async {
    print(state.requireValue.userStoringBooks);
    // ユーザーの本と一般的な本をそれぞれ保存
    await userStoringBookRepo.storePickedBookUser(book);
    await commonStoringBookRepo.storePickedBookCommon(book);
    final List<String?> userStoringBook = [
      ...await userStoringBookRepo.getUserStoringBooksISBN(),
      book.isbn,
    ];
    state = AsyncData(
      state.requireValue.copyWith(userStoringBooks: userStoringBook),
    );
    print(state.requireValue.userStoringBooks);
  }

  void _updateLoading(bool isLoading) =>
      state = AsyncData(state.requireValue.copyWith(isLoading: isLoading));
}
