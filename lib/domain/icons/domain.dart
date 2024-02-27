import 'package:freezed_annotation/freezed_annotation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'domain.freezed.dart';
part 'domain.g.dart';

@freezed
class UserIcons with _$UserIcons {
  factory UserIcons({
    required String imageUrl,
  }) = _Icons;

  factory UserIcons.fromJson(Map<String, dynamic> json) =>
      _$UserIconsFromJson(json);
}
