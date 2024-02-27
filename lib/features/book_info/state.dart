import 'package:book_picker/domain/book/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'state.freezed.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class BookInfoPageState with _$BookInfoPageState {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory BookInfoPageState({
    required Book book,
    required bool isCanStoreBook,
  }) = _BookInfoPageState;
}
