import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<Book> commonStoringBookFirestore(
  CommonStoringBookFirestoreRef ref,
) =>
    ref
        .read(firestoreProvider)
        .collection('common_storing_book')
        .withConverter<Book>(
          fromFirestore: (snapshot, _) => Book.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class CommonStoringBookRepo extends _$CommonStoringBookRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<Book> get collection =>
      ref.read(commonStoringBookFirestoreProvider);

  @override
  void build() {}

  /// common_storing_bookの追加
  /// TODO:トランザクションにして、数が増えるか検証
  Future<void> storePickedBookCommon(
    Book commonStoringBook,
  ) async {
    try {
      await collection.doc(commonStoringBook.isbn).set(commonStoringBook);

      // 保存した本の時間を更新
      await collection.doc(commonStoringBook.isbn).update({
        'storedTime': FieldValue.serverTimestamp(),
      });

      await collection.doc(commonStoringBook.isbn).update({
        'numberOfStored': FieldValue.increment(1),
      });
    } catch (e) {
      print('Error storing picked book: $e');
    }
  }

  /// 保存数順に取り出し
  Future<Book?> getCommonStoringBookByISBN(String isbn) async {
    final Book? book = await collection.doc(isbn).get().then((value) {
      if (value.data() == null) {
        return Book();
      }
      return value.data()!;
    });

    return book;
  }

  /// 保存数順に取り出し
  Future<List<Book>> getCommonStoringBookOrderByAmount() async {
    final List<Book> commonStoringBookOrderByAmount = [
      ...await collection
          .orderBy('numberOfStored')
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    return commonStoringBookOrderByAmount;
  }

  /// 保存が最近の順に取り出し
  Future<List<Book>> getCommonStoringBookOrderByTime() async {
    final List<Book> commonStoringBookOrderByTime = [
      ...await collection
          .orderBy('storedTime')
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    return commonStoringBookOrderByTime;
  }
}
