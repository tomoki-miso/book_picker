import 'package:freezed_annotation/freezed_annotation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'domain.freezed.dart';
part 'domain.g.dart';

@freezed
class AppAd with _$AppAd {
  factory AppAd({
    String? appId,
    String? imageUrl,
    String? appUrl,
    String? googleUrl,
  }) = _AppAd;

  factory AppAd.fromJson(Map<String, dynamic> json) => _$AppAdFromJson(json);
}
