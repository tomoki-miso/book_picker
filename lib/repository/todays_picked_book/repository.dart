import 'package:book_picker/domain/todays_picked_book/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<TodaysPickedBook> todaysPickedBookFirestore(
  TodaysPickedBookFirestoreRef ref,
) =>
    ref
        .read(firestoreProvider)
        .collection('user')
        .doc('Rrhwx2cGWjGWjNg7IcsY') // TODO:カレントユーザーに変更
        .collection('user_todays_book')
        .withConverter<TodaysPickedBook>(
          fromFirestore: (snapshot, _) =>
              TodaysPickedBook.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class TodaysPickedBookRepo extends _$TodaysPickedBookRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<TodaysPickedBook> get collection =>
      ref.read(todaysPickedBookFirestoreProvider);

  @override
  void build() {}

  Future<void> setTodaysBook(TodaysPickedBook todaysPickedBook) async {
    await collection.doc('1').set(todaysPickedBook);
  }

  Future<void> getTodaysBook(TodaysPickedBook todaysPickedBook) async {
    await collection.doc('1').get();
  }
}
