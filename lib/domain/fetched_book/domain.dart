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

  factory FetchedBook.fromJson(Map<String, dynamic> json) {
    final item = json['Item'];
    return FetchedBook(
      isbn: item['isbn'],
      title: item['title'],
      author: item['author'],
      itemCaption: item['itemCaption'],
      itemPrice: item['itemPrice'],
      largeImageUrl: item['largeImageUrl'],
      mediumImageUrl: item['mediumImageUrl'],
      publisherName: item['publisherName'],
      affiUrl: item['affiliateUrl'],
    );
  }
}
