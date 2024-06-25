import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'domain.freezed.dart';
part 'domain.g.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class UserInfoClass with _$UserInfoClass {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory UserInfoClass({
    required String userId,
    required String userName,
    required String userIcon,
  }) = _UserInfo;

  factory UserInfoClass.fromJson(Map<String, dynamic> json) =>
      _$UserInfoClassFromJson(json);
}
