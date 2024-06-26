import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<Book> userStoringBookFirestore(
  UserStoringBookFirestoreRef ref,
) =>
    ref
        .read(firestoreProvider)
        .collection('user')
        .doc(
          ref.read(firebaseAuthProvider).currentUser!.uid,
        )
        .collection('user_storing_book')
        .withConverter<Book>(
          fromFirestore: (snapshot, _) => Book.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class UserStoringBookRepo extends _$UserStoringBookRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<Book> get collection =>
      ref.read(userStoringBookFirestoreProvider);

  @override
  void build() {}

  /// 本の保存

  Future<void> storePickedBookUser(Book userStoringBook) async {
    await db.runTransaction((t) async {
      final DocumentReference userStoringBookRef = db
          .collection('user')
          .doc(
            ref.read(firebaseAuthProvider).currentUser!.uid,
          )
          .collection('user_storing_book')
          .doc(userStoringBook.isbn);

      t
        ..set(
          userStoringBookRef,
          userStoringBook.toJson(),
        )
        ..update(userStoringBookRef, {
          'storedTime': FieldValue.serverTimestamp(),
        });
    });
  }

  Future<void> deletePickedBookUser(Book userStoringBook) async {
    try {
      await collection.doc(userStoringBook.isbn).delete();
    } catch (e) {
      print('Error storing picked book: $e');
    }
  }

  Future<List<Book>> getUserStoringBooks() async {
    final List<Book> userStoringBooks = [
      ...await collection
          .orderBy('storedTime', descending: true)
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];

    return userStoringBooks;
  }

  Future<List<String?>> getUserStoringBooksISBN() async {
    final List<String?> userStoringBooksISBN = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data().isbn).toList()),
    ];

    return userStoringBooksISBN;
  }
}
