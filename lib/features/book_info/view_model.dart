import 'package:book_picker/domain/book/domain.dart';
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
    Book book,
  ) async {
    final BookInfoPageState state = BookInfoPageState(
      book: book,
    );

    return state;
  }
}
