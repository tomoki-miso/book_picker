import 'package:book_picker/domain/user/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'state.freezed.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class MyAccountPageState with _$MyAccountPageState {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory MyAccountPageState({
    required UserInfoClass userInfo,
  }) = _MyAccountPageState;
}
