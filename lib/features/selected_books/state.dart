import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/selected_books/bookListType.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'state.freezed.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class SelectedBooksPageState with _$SelectedBooksPageState {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory SelectedBooksPageState({
    required List<Book> storingBooks,
    required List<String?> userStoringBooks,
    BookListType? bookListType,
    @Default(false) bool isLoading,
  }) = _SelectedBooksPageState;
}
