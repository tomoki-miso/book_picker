import 'package:book_picker/converter/time_stamp_conveter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
    @TimestampConverter() DateTime? storedTime,
  }) = _UserStoringBook;

  factory UserStoringBook.fromJson(Map<String, dynamic> json) =>
      _$UserStoringBookFromJson(json);
}
