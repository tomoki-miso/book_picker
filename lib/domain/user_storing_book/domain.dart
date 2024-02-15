import 'package:freezed_annotation/freezed_annotation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'domain.freezed.dart';
part 'domain.g.dart';

@freezed
class UserStoringBook with _$UserStoringBook {
  factory UserStoringBook({
    String? isbn,
    String? title,
    String? author,
    String? itemCaption,
    int? itemPrice,
    String? largeImageUrl,
    String? mediumImageUrl,
    String? publisherName,
  }) = _UserStoringBook;

  factory UserStoringBook.fromJson(Map<String, dynamic> json) =>
      _$UserStoringBookFromJson(json);
}
