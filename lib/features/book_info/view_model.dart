import 'package:book_picker/domain/common_storing_book/domain.dart';
import 'package:book_picker/domain/fetched_book/domain.dart';
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
    FetchedBook? fetchedBook,
    CommonStoringBook? commonStoringBook,
    UserStoringBook? userStoringBook,
  ) async {

    final BookInfoPageState state = BookInfoPageState(
      fetchedBook: fetchedBook,
      commonStoringBook: commonStoringBook,
      userStoringBook: userStoringBook,
    );

    print(this.pageType);
    print(state.fetchedBook);
    return state;
  }
// void switchPageType(){
// switch(pageType) async {
//     case 'todaysBook';
//     final BookInfo=fetchedBook;
//     return BookInfo;

//   }

// }
    
}
