import 'package:book_picker/domain/user_storing_book/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<UserStoringBook> userStoringBookFirestore(
  UserStoringBookFirestoreRef ref,
) =>
    ref
        .read(firestoreProvider)
        .collection('user')
        .doc('Rrhwx2cGWjGWjNg7IcsY') // TODO:カレントユーザーに変更
        .collection('user_storing_book')
        .withConverter<UserStoringBook>(
          fromFirestore: (snapshot, _) =>
              UserStoringBook.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class UserStoringBookRepo extends _$UserStoringBookRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<UserStoringBook> get collection =>
      ref.read(userStoringBookFirestoreProvider);

  @override
  void build() {}

  /// 本の保存
  /// TODO:トランザクション検討
  Future<void> storePickedBookUser(UserStoringBook userStoringBook) async {
    try {
      await collection.doc(userStoringBook.isbn).set(userStoringBook);

      // 保存した本の時間を更新
      await collection.doc(userStoringBook.isbn).update({
        'storedTime': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      print('Error storing picked book: $e');
    }
  }

  Future<List<UserStoringBook>> getUserStoringBooks() async {
    final List<UserStoringBook> userStoringBooks = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];

    return userStoringBooks;
  }
}
