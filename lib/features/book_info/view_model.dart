import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/state.dart';
import 'package:book_picker/repository/common_storing_book/repository.dart';
import 'package:book_picker/repository/user_storing_book/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class BookInfoPageViewModel extends _$BookInfoPageViewModel {
  UserStoringBookRepo get userStoringBookRepo =>
      ref.read(userStoringBookRepoProvider.notifier);

  CommonStoringBookRepo get commonStoringBookRepo =>
      ref.read(commonStoringBookRepoProvider.notifier);

  @override
  FutureOr<BookInfoPageState> build(
    Book book,
  ) async {
    final bool isCanStoreBook = await _checkIsCanStoreBook(book);

    final BookInfoPageState state =
        BookInfoPageState(book: book, isCanStoreBook: isCanStoreBook);
    return state;
  }

  /// 本を保存できるかチェック
  Future<bool> _checkIsCanStoreBook(Book book) async {
    final List<String?> userStoredBooks =
        await userStoringBookRepo.getUserStoringBooksISBN();

    if (userStoredBooks.contains(book.isbn)) {
      return false;
    } else {
      return true;
    }
  }

  /// ユーザーと全体が本をそれぞれ保存
  Future<void> storeBook() async {
    final bookData = state.requireValue.book;
    await userStoringBookRepo.deletePickedBookUser(bookData);
    await commonStoringBookRepo.storePickedBookCommon(bookData);
    state = AsyncData(state.requireValue.copyWith(isCanStoreBook: false));
  }

  Future<void> deleteBook() async {
    final bookData = state.requireValue.book;
    await userStoringBookRepo.deletePickedBookUser(bookData);
    await commonStoringBookRepo.deletePickedBookCommon(bookData);
    state = AsyncData(state.requireValue.copyWith(isCanStoreBook: true));
  }
}
