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
    String? affiUrl,
  }) = _FetchedBook;

  factory FetchedBook.fromJson(Map<String, dynamic> json, int index) =>
      FetchedBook(
        isbn: json['Items'][index]['Item']['isbn'],
        title: json['Items'][index]['Item']['title'],
        author: json['Items'][index]['Item']['author'],
        itemCaption: json['Items'][index]['Item']['itemCaption'],
        itemPrice: json['Items'][index]['Item']['itemPrice'],
        largeImageUrl: json['Items'][index]['Item']['largeImageUrl'],
        mediumImageUrl: json['Items'][index]['Item']['mediumImageUrl'],
        publisherName: json['Items'][index]['Item']['publisherName'],
        affiUrl: json['Items'][index]['Item']['affiliateUrl'],
      );
}
