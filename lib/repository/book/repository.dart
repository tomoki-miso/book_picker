import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/env/env.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
class BookRepo extends _$BookRepo {
  @override
  void build() {}

  Future<Book> fetchBookInfo(String isbn) async {
    final dio = Dio();
    final String appId = Env.key;
    const apiUrl =
        'https://app.rakuten.co.jp/services/api/BooksTotal/Search/20170404';

    final url = Uri.parse(
      '$apiUrl?format=json&isbnjan=$isbn&applicationId=$appId',
    );
    print(url);
    final response = await dio.getUri(url);

    try {
      final data = response.data;
      print(data);
      final Book book = Book.fromJson(data);
      return book;
    } catch (e) {
      throw e;
    }
  }
}
