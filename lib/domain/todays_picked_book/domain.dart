import 'package:freezed_annotation/freezed_annotation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'domain.freezed.dart';
part 'domain.g.dart';

@freezed
class TodaysPickedBook with _$TodaysPickedBook {
  factory TodaysPickedBook({
    String? isbn,
    String? title,
    String? author,
    String? itemCaption,
    int? itemPrice,
    String? largeImageUrl,
    String? mediumImageUrl,
    String? publisherName,
  }) = _TodaysPickedBook;

  /// FireStore用
  factory TodaysPickedBook.fromJson(Map<String, dynamic> json) =>
      _$TodaysPickedBookFromJson(json);
}
