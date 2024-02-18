import 'package:book_picker/domain/common_storing_book/domain.dart';
import 'package:book_picker/domain/fetched_book/domain.dart';
import 'package:book_picker/domain/todays_picked_book/domain.dart';
import 'package:book_picker/domain/user_storing_book/domain.dart';
import 'package:book_picker/features/top/state.dart';
import 'package:book_picker/repository/common_storing_book/repository.dart';
import 'package:book_picker/repository/fetched_book/repository.dart';
import 'package:book_picker/repository/todays_picked_book/repository.dart';
import 'package:book_picker/repository/user_storing_book/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class TopPageViewModel extends _$TopPageViewModel {
  FetchedBookRepo get fetchedBookRepo =>
      ref.read(fetchedBookRepoProvider.notifier);
  UserStoringBookRepo get userStoringBookRepo =>
      ref.read(userStoringBookRepoProvider.notifier);
  TodaysPickedBookRepo get todaysPickedBookRepo =>
      ref.read(todaysPickedBookRepoProvider.notifier);
  CommonStoringBookRepo get commonStoringBookRepo =>
      ref.read(commonStoringBookRepoProvider.notifier);

  @override
  FutureOr<TopPageState> build(String isbn) async {
    final FetchedBook book = await fetchedBookRepo.fetchBookInfo(isbn);
    final TodaysPickedBook todaysPickedBook =
        await todaysPickedBookRepo.getTodaysBook();
    final List<CommonStoringBook> commonStoringBookOrderByAmount =
        await commonStoringBookRepo.getComomonStoringBookOrderByAmount();
    final List<CommonStoringBook> commonStoringBookOrderByTime =
        await commonStoringBookRepo.getComomonStoringBookOrderByTime();

    final TopPageState state = TopPageState(
      book: book,
      commonStoringBookOrderByAmount: commonStoringBookOrderByAmount,
      commonStoringBookOrderByTime: commonStoringBookOrderByTime,
      todaysPickedBook: todaysPickedBook,
    );
    print(state);
    print(state.commonStoringBookOrderByAmount);
    return state;
  }

  /// Pickされた本を一時的に保存
  Future<void> setTodaysPickedBook() async {
    final bookData = state.requireValue.book;
    final TodaysPickedBook todaysPickedBook = TodaysPickedBook(
      isbn: bookData.isbn,
      title: bookData.title,
      author: bookData.author,
      itemPrice: bookData.itemPrice,
      itemCaption: bookData.itemCaption,
      largeImageUrl: bookData.largeImageUrl,
      mediumImageUrl: bookData.mediumImageUrl,
      publisherName: bookData.publisherName,
    );
    await todaysPickedBookRepo.setTodaysBook(todaysPickedBook);
  }

  /// 本をアーカイブ（セレクト）
  Future<void> storePickedBook() async {
    final bookData = state.requireValue.book;
    final UserStoringBook userStoringBook = UserStoringBook(
      isbn: bookData.isbn,
      title: bookData.title,
      author: bookData.author,
      itemCaption: bookData.itemCaption,
      largeImageUrl: bookData.largeImageUrl,
      mediumImageUrl: bookData.mediumImageUrl,
      publisherName: bookData.publisherName,
      itemPrice: bookData.itemPrice,
    );
    final CommonStoringBook commonStoringBook = CommonStoringBook(
      isbn: bookData.isbn,
      title: bookData.title,
      author: bookData.author,
      itemCaption: bookData.itemCaption,
      largeImageUrl: bookData.largeImageUrl,
      mediumImageUrl: bookData.mediumImageUrl,
      publisherName: bookData.publisherName,
      itemPrice: bookData.itemPrice,
    );

    // ユーザーの本と一般的な本をそれぞれ保存
    await userStoringBookRepo.storePickedBookUser(userStoringBook);
    await commonStoringBookRepo.storePickedBookCommon(commonStoringBook);
  }
}
