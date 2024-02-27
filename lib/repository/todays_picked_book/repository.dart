import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<Book> todaysPickedBookFirestore(
  TodaysPickedBookFirestoreRef ref,
) =>
    ref
        .read(firestoreProvider)
        .collection('user')
        .doc(ref.read(firebaseAuthProvider).currentUser!.uid) // TODO:カレントユーザーに変更
        .collection('user_todays_book')
        .withConverter<Book>(
          fromFirestore: (snapshot, _) => Book.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class TodaysPickedBookRepo extends _$TodaysPickedBookRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<Book> get collection =>
      ref.read(todaysPickedBookFirestoreProvider);

  @override
  void build() {}

  Future<void> setTodaysBook(Book todaysPickedBook) async {
    await collection.doc('1').set(todaysPickedBook);
  }

  /// 今日のPICKBOOK取得
  Future<Book> getTodaysBook() async => collection.doc('1').get().then((value) {
        if (value.data() == null) {
          throw ArgumentError('データが存在しません');
        }
        return value.data()!;
      });
}
