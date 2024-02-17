import 'package:book_picker/domain/fetched_book/domain.dart';
import 'package:book_picker/env/env.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<FetchedBook> fetchedBookFirestore(
  FetchedBookFirestoreRef ref,
) =>
    ref
        .read(firestoreProvider)
        .collection('user')
        .doc('Rrhwx2cGWjGWjNg7IcsY') // TODO:カレントユーザーに変更
        .collection('user_todays_book')
        .withConverter<FetchedBook>(
          fromFirestore: (snapshot, _) =>
              FetchedBook.fromJsonStore(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class FetchedBookRepo extends _$FetchedBookRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<FetchedBook> get collection =>
      ref.read(fetchedBookFirestoreProvider);

  @override
  void build() {}

  /// APIから本を取り出す
  Future<FetchedBook> fetchBookInfo(String isbn) async {
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
      final FetchedBook book = FetchedBook.fromJson(data);
      return book;
    } catch (e) {
      throw e;
    }
  }

  Future<void> setTodaysBook(FetchedBook fetchedBook) async {
    await collection.doc('1').set(fetchedBook);
  }
}
