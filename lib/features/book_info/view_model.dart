import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/domain/common_storing_book/domain.dart';
import 'package:book_picker/domain/todays_picked_book/domain.dart';
import 'package:book_picker/domain/user_storing_book/domain.dart';
import 'package:book_picker/features/book_info/page_type.dart';
import 'package:book_picker/features/book_info/state.dart';
import 'package:book_picker/repository/user_storing_book/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class BookInfoPageViewModel extends _$BookInfoPageViewModel {
  UserStoringBookRepo get userStoringBookRepo =>
      ref.read(userStoringBookRepoProvider.notifier);

  @override
  FutureOr<BookInfoPageState> build(
    PageType pageType,
    TodaysPickedBook? todaysPickedBook,
    CommonStoringBook? commonStoringBook,
    UserStoringBook? userStoringBook,
  ) async {
    BookInfoPageState state;

    switch (pageType) {
      /// Fetched
      case PageType.fetched:
        state = BookInfoPageState(
          pagetype: pageType,
          book: Book(
            isbn: todaysPickedBook?.isbn,
            title: todaysPickedBook?.title,
            author: todaysPickedBook?.author,
            itemCaption: todaysPickedBook?.itemCaption,
            itemPrice: todaysPickedBook?.itemPrice,
            imageUrl: todaysPickedBook?.largeImageUrl,
            publisherName: todaysPickedBook?.publisherName,
          ),
        );
        return state;

      /// commonStoring
      case PageType.commonStoring:
        state = BookInfoPageState(
          pagetype: pageType,
          book: Book(
            isbn: commonStoringBook?.isbn,
            title: commonStoringBook?.title,
            author: commonStoringBook?.author,
            itemCaption: commonStoringBook?.itemCaption,
            itemPrice: commonStoringBook?.itemPrice,
            imageUrl: commonStoringBook?.largeImageUrl,
            publisherName: commonStoringBook?.publisherName,
          ),
        );
        return state;

      /// UserStoring
      case PageType.userStoring:
        state = BookInfoPageState(
          pagetype: pageType,
          book: Book(
            isbn: userStoringBook?.isbn,
            title: userStoringBook?.title,
            author: userStoringBook?.author,
            itemCaption: userStoringBook?.itemCaption,
            itemPrice: userStoringBook?.itemPrice,
            imageUrl: userStoringBook?.largeImageUrl,
            publisherName: userStoringBook?.publisherName,
          ),
        );
        return state;
    }
  }
}
