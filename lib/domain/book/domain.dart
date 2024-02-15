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
    int? itemPrice,
    String? largeImageUrl,
    String? mediumImageUrl,
    String? publisherName,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        title: json['Items'][0]['Item']['title'],
        author: json['Items'][0]['Item']['author'],
        itemCaption: json['Items'][0]['Item']['itemCaption'],
        itemPrice: json['Items'][0]['Item']['itemPrice'],
        largeImageUrl: json['Items'][0]['Item']['largeImageUrl'],
        mediumImageUrl: json['Items'][0]['Item']['mediumImageUrl'],
        publisherName: json['Items'][0]['Item']['publisherName'],
      );
}
