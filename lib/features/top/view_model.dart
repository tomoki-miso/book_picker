import 'package:book_picker/domain/fetched_book/domain.dart';
import 'package:book_picker/domain/user_storing_book/domain.dart';
import 'package:book_picker/features/top/state.dart';
import 'package:book_picker/repository/fetched_book/repository.dart';
import 'package:book_picker/repository/user_storing_book/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class TopPageViewModel extends _$TopPageViewModel {
  FetchBookRepo get bookRepo => ref.read(fetchBookRepoProvider.notifier);
  UserStoringBookRepo get userStoringBookRepo =>
      ref.read(userStoringBookRepoProvider.notifier);

  @override
  FutureOr<TopPageState> build(String isbn) async {
    final FetchedBook book = await bookRepo.fetchBookInfo(isbn);
    print(book);
    final TopPageState state = TopPageState(book: book);
    return state;
  }

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
