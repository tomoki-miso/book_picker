import 'package:book_picker/domain/common_storing_book/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<CommonStoringBook> commonStoringBookFirestore(
  CommonStoringBookFirestoreRef ref,
) =>
    ref
        .read(firestoreProvider)
        .collection('common_storing_book')
        .withConverter<CommonStoringBook>(
          fromFirestore: (snapshot, _) =>
              CommonStoringBook.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class CommonStoringBookRepo extends _$CommonStoringBookRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<CommonStoringBook> get collection =>
      ref.read(commonStoringBookFirestoreProvider);

  @override
  void build() {}

  /// common_storing_bookの追加
  /// TODO:トランザクションにして、数が増えるか検証
  Future<void> storePickedBookCommon(
    CommonStoringBook commonStoringBook,
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
  Future<List<CommonStoringBook>> getComomonStoringBookOrderByAmount() async {
    final List<CommonStoringBook> commonStoringBookOrderByAmount = [
      ...await collection
          .orderBy('numberOfStored')
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    return commonStoringBookOrderByAmount;
  }

  Future<List<CommonStoringBook>> getComomonStoringBookOrderByTime() async {
    final List<CommonStoringBook> commonStoringBookOrderByTime = [
      ...await collection
          .orderBy('storedTime')
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    return commonStoringBookOrderByTime;
  }
}
