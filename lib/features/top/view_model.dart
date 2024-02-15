import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/top/state.dart';
import 'package:book_picker/repository/book/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class TopPageViewModel extends _$TopPageViewModel {
  BookRepo get bookRepo => ref.read(bookRepoProvider.notifier);

  @override
  FutureOr<TopPageState> build(String isbn) async {
    final Book book = await bookRepo.fetchBookInfo(isbn);
    print(book);
    final TopPageState state = TopPageState(book: book);
    return state;
  }
}
