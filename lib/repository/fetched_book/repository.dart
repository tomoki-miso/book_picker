import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/domain/fetched_book/domain.dart';
import 'package:book_picker/env/env.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
class FetchedBookRepo extends _$FetchedBookRepo {
  @override
  void build() {}

  /// APIからISBNで取り出す
  Future<FetchedBook?> fetchBookInfoByISBN(String isbn) async {
    final dio = Dio();
    final String appId = Env.key;
    final String affId = Env.aKey;
    const apiUrl =
        'https://app.rakuten.co.jp/services/api/BooksTotal/Search/20170404';

    final url = Uri.parse(
      '$apiUrl?format=json&isbnjan=$isbn&affiliateId=$affId&applicationId=$appId',
    );

    try {
      final response = await dio.getUri(url);
      final data = response.data;
      final FetchedBook book = FetchedBook.fromJson(data);
      return book;
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      // エラーが発生した場合は null を返す
      return null;
    }
  }

  Future<FetchedBook?> fetchBookInfoByKeword(String keyword, int index) async {
    final dio = Dio();
    final String appId = Env.key;
    final String affId = Env.aKey;
    const apiUrl =
        'https://app.rakuten.co.jp/services/api/BooksBook/Search/20170404';

    final url = Uri.parse(
      '$apiUrl?format=json&title=$keyword&affiliateId=$affId&applicationId=$appId',
    );
    print(url);

    try {
      final response = await dio.getUri(url);
      final data = response.data;

      // レスポンスデータから本のリストを取得
      final List<dynamic> items = data['Items'];

      // 指定されたインデックスの本の情報を取得し、FetchedBookオブジェクトに変換
      if (index >= 0 && index < items.length) {
        final FetchedBook book = FetchedBook.fromJson(items[index]['Item']);
        return book;
      } else {
        // インデックスが範囲外の場合はnullを返す
        return null;
      }
    } catch (e) {
      // エラーが発生した場合は null を返す
      return null;
    }
  }

  Future<List<Book>> fetchBooksListByKeword(String keyword) async {
    final dio = Dio();
    final String appId = Env.key;
    final String affId = Env.aKey;
    const apiUrl =
        'https://app.rakuten.co.jp/services/api/BooksBook/Search/20170404';

    final url = Uri.parse(
      '$apiUrl?format=json&title=$keyword&affiliateId=$affId&applicationId=$appId',
    );
    print(url);
    try {
      final response = await dio.getUri(url);
      final data = response.data;

      final List<Book> bookList = [];

      for (var item in data['Items']) {
        final FetchedBook fetchedBook = FetchedBook.fromJson(item);
        final Book book = Book.fromFetchedBook(fetchedBook);
        bookList.add(book);
      }
      print(bookList);
      return bookList;
    } catch (e) {
      // エラーが発生した場合は空のリストを返す
      return [];
    }
  }
}
