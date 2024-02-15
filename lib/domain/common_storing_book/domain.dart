import 'package:freezed_annotation/freezed_annotation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'domain.freezed.dart';
part 'domain.g.dart';

@freezed
class CommonStoringBook with _$CommonStoringBook {
  factory CommonStoringBook({
    String? isbn,
    String? title,
    String? author,
    String? itemCaption,
    int? itemPrice,
    String? largeImageUrl,
    String? mediumImageUrl,
    String? publisherName,
  }) = _CommonStoringBook;

  factory CommonStoringBook.fromJson(Map<String, dynamic> json) =>
      _$CommonStoringBookFromJson(json);
}
