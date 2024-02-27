import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'domain.freezed.dart';
part 'domain.g.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class VersionConfig with _$VersionConfig {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory VersionConfig({
    required String iosVersion,
    required String androidVersion,
  }) = _VersionConfig;

  factory VersionConfig.fromJson(Map<String, dynamic> json) =>
      _$VersionConfigFromJson(json);

  static String collectionName = 'config';
}
