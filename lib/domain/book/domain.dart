
import 'package:freezed_annotation/freezed_annotation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'domain.freezed.dart';
part 'domain.g.dart';

@freezed
class Book with _$Book {
  factory Book({
    String? title,
    String? author,
    String? itemCaption,
    String? itemPrice,
    String? largeImageUrl,
    String? mediumImageUrl,
    String? publisherName,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}