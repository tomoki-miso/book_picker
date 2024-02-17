import 'package:freezed_annotation/freezed_annotation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'domain.freezed.dart';
part 'domain.g.dart';

@freezed
class FetchedBook with _$FetchedBook {
  factory FetchedBook({
    String? isbn,
    String? title,
    String? author,
    String? itemCaption,
    int? itemPrice,
    String? largeImageUrl,
    String? mediumImageUrl,
    String? publisherName,
  }) = _FetchedBook;

  factory FetchedBook.fromJson(Map<String, dynamic> json) => FetchedBook(
        isbn: json['Items'][0]['Item']['isbn'],
        title: json['Items'][0]['Item']['title'],
        author: json['Items'][0]['Item']['author'],
        itemCaption: json['Items'][0]['Item']['itemCaption'],
        itemPrice: json['Items'][0]['Item']['itemPrice'],
        largeImageUrl: json['Items'][0]['Item']['largeImageUrl'],
        mediumImageUrl: json['Items'][0]['Item']['mediumImageUrl'],
        publisherName: json['Items'][0]['Item']['publisherName'],
      );

  /// FireStore用
  factory FetchedBook.fromJsonStore(Map<String, dynamic> json) =>
      _$FetchedBookFromJson(json);
}
