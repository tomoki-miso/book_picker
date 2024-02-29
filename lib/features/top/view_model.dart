import 'package:book_picker/domain/app_ad/domain.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/domain/user/domain.dart';
import 'package:book_picker/features/top/state.dart';
import 'package:book_picker/repository/app_ad/repository.dart';
import 'package:book_picker/repository/common_storing_book/repository.dart';
import 'package:book_picker/repository/fetched_book/repository.dart';
import 'package:book_picker/repository/keyword/repository.dart';
import 'package:book_picker/repository/todays_picked_book/repository.dart';
import 'package:book_picker/repository/user_info/repository.dart';
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
  AppAdRepo get appAdRepo => ref.read(appAdRepoProvider.notifier);
  KeywordRepo get keywordRepo => ref.read(keywordRepoProvider.notifier);
  UserInfoRepo get userInfoRepo => ref.read(userInfoRepoProvider.notifier);

  @override
  FutureOr<TopPageState> build() async {
    final List<Book> commonStoringBookOrderByAmount =
        await commonStoringBookRepo.getCommonStoringBookOrderByAmount();
    final List<Book> commonStoringBookOrderByTime =
        await commonStoringBookRepo.getCommonStoringBookOrderByTime();

    final List<AppAd> appAds = await appAdRepo.getAppAds();
    final UserInfoClass userInfo = await userInfoRepo.getUserInfo();
    final Book todaysPickedBook = await _getBook();

    final TopPageState state = TopPageState(
      appAds: appAds,
      user: userInfo,
      commonStoringBookOrderByAmount: commonStoringBookOrderByAmount,
      commonStoringBookOrderByTime: commonStoringBookOrderByTime,
      todaysPickedBook: todaysPickedBook,
    );
    print(state);
    print(state.commonStoringBookOrderByAmount);
    return state;
  }

  /// ISBN-13の生成
  // Future<String> _generateISBN() async {
  //   const String preSymbol = '978';
  //   const String countryCode = '4';
  //   final List<String> groupSymbols = [
  //     '00',
  //     '01',
  //     '02',
  //     '03',
  //     '04',
  //     '05',
  //     '06',
  //     '07',
  //     '08',
  //     '09',
  //     '10',
  //     '344',
  //     '643',
  //     '7660',
  //     '87728',
  //   ];
  //   groupSymbols.shuffle();
  //   final groupSymbol = groupSymbols.first;

  //   /// 出版者記号の合算
  //   final String isbnWithOutBookSymbol = preSymbol + countryCode + groupSymbol;

  //   /// 書名記号の生成
  //   final int bookSymbolLength = 12 - isbnWithOutBookSymbol.length;
  //   final int maxBookSymbol = math.pow(10, bookSymbolLength).toInt();
  //   final String bookSymbol = math.Random()
  //       .nextInt(maxBookSymbol)
  //       .toString()
  //       .padLeft(bookSymbolLength, '0');
  //   final String isbnWithoutCheckDigit =
  //       (isbnWithOutBookSymbol + bookSymbol).trim();

  //   /// チェックディジットの計算
  //   int checkDigit = 0;
  //   for (int i = 0; i < isbnWithoutCheckDigit.length; i++) {
  //     int digit = int.tryParse(isbnWithoutCheckDigit[i]) ?? 0;
  //     if (i.isEven) {
  //       checkDigit += digit;
  //     } else {
  //       checkDigit += digit * 3;
  //     }
  //   }
  //   checkDigit = (10 - (checkDigit % 10)) % 10;

  //   /// 最終的なISBN-13の完成
  //   final String isbnWithCheckDigit =
  //       isbnWithoutCheckDigit + checkDigit.toString();

  //   return isbnWithCheckDigit;
  // }

  // /// 本をISBNコードをもとに取り出す
  // Future<Book> getBookFromISBN() async {
  //   Book? book;

  //   while (book == null) {
  //     _updateLoading(true);
  //     final String isbn = await _generateISBN();
  //     print(isbn);
  //     final Book? storedBook =
  //         await commonStoringBookRepo.getCommonStoringBookByISBN(isbn);
  //     print('storedBook:$storedBook');

  //     if (storedBook != null && storedBook != Book()) {
  //       _updateLoading(false);
  //       return storedBook;
  //     } else {
  //       final FetchedBook? fetchedBook =
  //           await fetchedBookRepo.fetchBookInfoByISBN(isbn);
  //       print('fetched:$fetchedBook');

  //       if (fetchedBook != null) {
  //         book = Book(
  //           isbn: fetchedBook.isbn,
  //           title: fetchedBook.title,
  //           author: fetchedBook.author,
  //           itemCaption: fetchedBook.itemCaption,
  //           itemPrice: fetchedBook.itemPrice,
  //           imageUrl: fetchedBook.largeImageUrl,
  //           publisherName: fetchedBook.publisherName,
  //           affiUrl: fetchedBook.affiUrl,
  //         );
  //       }
  //     }

  //     // 1秒待機
  //     await Future.delayed(const Duration(seconds: 1));
  //   }
  //   await todaysPickedBookRepo.setTodaysBook(book);
  //   _updateLoading(false);
  //   print(book);
  //   return book;
  // }

  /// Keywordで適当な本を取り出す
  Future<Book> getBookFromKeyword() async {
    print('aa');
    _updateLoading(true);
    print(state.requireValue.isLoading);
    final Book book = await _getBook();
    await todaysPickedBookRepo.setTodaysBook(book);
    state = AsyncData(state.requireValue.copyWith(todaysPickedBook: book));
    _updateIsStored(false);
    _updateLoading(false);
    return book;
  }

  Future<Book> _getBook() async {
    Book? book;
    while (book == null) {
      final String keyword = await keywordRepo.getKeyword();

      final List<Book> fetchedBooks =
          await fetchedBookRepo.fetchBooksListByKeword(keyword);
      fetchedBooks.shuffle();
      book = fetchedBooks.first;

      // 1秒待機
      await Future.delayed(const Duration(seconds: 1));
    }
    return book;
  }

  /// Pickされた本を一時的に保存
  Future<void> setTodaysPickedBook() async {
    final bookData = state.requireValue.fetchedBook!;
    final Book todaysPickedBook = Book(
      isbn: bookData.isbn,
      title: bookData.title,
      author: bookData.author,
      itemPrice: bookData.itemPrice,
      itemCaption: bookData.itemCaption,
      imageUrl: bookData.largeImageUrl,
      mediumImageUrl: bookData.mediumImageUrl,
      publisherName: bookData.publisherName,
      affiUrl: bookData.affiUrl,
    );
    await todaysPickedBookRepo.setTodaysBook(todaysPickedBook);
  }

  /// 本をアーカイブ（セレクト）
  Future<void> storePickedBook() async {
    _updateIsStored(true);
    final bookData = state.requireValue.todaysPickedBook;
    // ユーザーの本と一般的な本をそれぞれ保存
    await userStoringBookRepo.storePickedBookUser(bookData!);
    await commonStoringBookRepo.storePickedBookCommon(bookData);
  }

  void _updateIsStored(bool isStored) =>
      state = AsyncData(state.requireValue.copyWith(isStored: isStored));

  void _updateLoading(bool isStored) =>
      state = AsyncData(state.requireValue.copyWith(isLoading: isStored));
}
