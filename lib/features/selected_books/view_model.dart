import 'package:book_picker/domain/user_storing_book/domain.dart';
import 'package:book_picker/features/selected_books/state.dart';
import 'package:book_picker/repository/user_storing_book/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class SelectedBooksPageViewModel extends _$SelectedBooksPageViewModel {
  UserStoringBookRepo get userStoringBookRepo =>
      ref.read(userStoringBookRepoProvider.notifier);

  @override
  FutureOr<SelectedBooksPageState> build() async {
    final List<UserStoringBook> storingBooks =
        await userStoringBookRepo.getUserStoringBooks();

    final SelectedBooksPageState state =
        SelectedBooksPageState(storingBooks: storingBooks);
    return state;
  }
}
