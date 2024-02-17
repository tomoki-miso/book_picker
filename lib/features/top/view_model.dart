import 'package:book_picker/domain/fetched_book/domain.dart';
import 'package:book_picker/domain/user_storing_book/domain.dart';
import 'package:book_picker/features/top/state.dart';
import 'package:book_picker/repository/fetched_book/repository.dart';
import 'package:book_picker/repository/user_storing_book/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class TopPageViewModel extends _$TopPageViewModel {
  FetchedBookRepo get fetchedBookRepo =>
      ref.read(fetchedBookRepoProvider.notifier);
  UserStoringBookRepo get userStoringBookRepo =>
      ref.read(userStoringBookRepoProvider.notifier);

  @override
  FutureOr<TopPageState> build(String isbn) async {
    final FetchedBook book = await fetchedBookRepo.fetchBookInfo(isbn);
    print(book);
    final TopPageState state = TopPageState(book: book);
    return state;
  }

  /// Pickされた本を一時的に保存
  Future<void> setTodaysPickedBook(FetchedBook fetchedBook) async {
    await fetchedBookRepo.setTodaysBook(fetchedBook);
  }

  /// 本をアーカイブ（セレクト）
  Future<void> storePickedBook() async {
    final bookData = state.requireValue.book;
    final UserStoringBook storingBook = UserStoringBook(
      isbn: bookData.isbn,
      title: bookData.title,
      author: bookData.author,
      itemCaption: bookData.itemCaption,
      largeImageUrl: bookData.largeImageUrl,
      mediumImageUrl: bookData.mediumImageUrl,
      publisherName: bookData.publisherName,
      storedTime: DateTime.now(),
    );
    await userStoringBookRepo.storePickedBookUser(storingBook);
  }
}
