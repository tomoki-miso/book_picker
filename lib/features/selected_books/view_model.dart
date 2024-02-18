import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/selected_books/bookListType.dart';
import 'package:book_picker/features/selected_books/state.dart';
import 'package:book_picker/repository/common_storing_book/repository.dart';
import 'package:book_picker/repository/user_storing_book/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class SelectedBooksPageViewModel extends _$SelectedBooksPageViewModel {
  UserStoringBookRepo get userStoringBookRepo =>
      ref.read(userStoringBookRepoProvider.notifier);

  CommonStoringBookRepo get commonStoringBookRepo =>
      ref.read(commonStoringBookRepoProvider.notifier);

  @override
  FutureOr<SelectedBooksPageState> build(BookListType bookListType) async {
    switch (bookListType) {
      /// Fetched
      case BookListType.popularBooks:
        final List<Book> storingBooks = await commonStoringBookRepo
            .getComomonStoringBookOrderByAmount()
            .then(
              (value) => value
                  .map(
                    (e) => Book(
                      isbn: e.isbn,
                      title: e.title,
                      author: e.author,
                      imageUrl: e.largeImageUrl,
                      itemCaption: e.itemCaption,
                      itemPrice: e.itemPrice,
                      publisherName: e.publisherName,
                    ),
                  )
                  .toList(),
            );
        final state = SelectedBooksPageState(
          bookListType: bookListType,
          storingBooks: storingBooks,
        );
        return state;

      /// 最近Select
      case BookListType.recentStoredBooks:
        final List<Book> storingBooks =
            await commonStoringBookRepo.getComomonStoringBookOrderByTime().then(
                  (value) => value
                      .map(
                        (e) => Book(
                          isbn: e.isbn,
                          title: e.title,
                          author: e.author,
                          imageUrl: e.largeImageUrl,
                          itemCaption: e.itemCaption,
                          itemPrice: e.itemPrice,
                          publisherName: e.publisherName,
                        ),
                      )
                      .toList(),
                );
        final state = SelectedBooksPageState(
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
                          imageUrl: e.largeImageUrl,
                          itemCaption: e.itemCaption,
                          itemPrice: e.itemPrice,
                          publisherName: e.publisherName,
                        ),
                      )
                      .toList(),
                );
        final state = SelectedBooksPageState(
          bookListType: bookListType,
          storingBooks: storingBooks,
        );
        return state;
    }
  }
}
