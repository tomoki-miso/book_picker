import 'package:book_picker/converter/time_stamp_conveter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'domain.freezed.dart';
part 'domain.g.dart';

@freezed
class Book with _$Book {
  factory Book({
    String? isbn,
    String? title,
    String? author,
    String? itemCaption,
    int? itemPrice,
    String? imageUrl,
    String? mediumImageUrl,
    String? publisherName,
    String? affiUrl,
    int? numberOfStored,
    @TimestampConverter() DateTime? storedTime,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
