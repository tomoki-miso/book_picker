import 'package:book_picker/domain/fetched_book/domain.dart';
import 'package:book_picker/env/env.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
class FetchedBookRepo extends _$FetchedBookRepo {
  @override
  void build() {}

  /// APIから取り出す
  Future<FetchedBook> fetchBookInfo(String isbn) async {
    final dio = Dio();
    final String appId = Env.key;
    const apiUrl =
        'https://app.rakuten.co.jp/services/api/BooksTotal/Search/20170404';

    final url = Uri.parse(
      '$apiUrl?format=json&isbnjan=$isbn&applicationId=$appId',
    );
    final response = await dio.getUri(url);

    try {
      final data = response.data;
      final FetchedBook book = FetchedBook.fromJson(data);
      return book;
    } catch (e) {
      throw e;
    }
  }
}
