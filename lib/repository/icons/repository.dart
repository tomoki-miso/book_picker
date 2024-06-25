import 'package:book_picker/domain/icons/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<UserIcons> userIconsFirestore(
  UserIconsFirestoreRef ref,
) =>
    ref.read(firestoreProvider).collection('icons').withConverter<UserIcons>(
          fromFirestore: (snapshot, _) => UserIcons.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class UserIconsRepo extends _$UserIconsRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<UserIcons> get collection =>
      ref.read(userIconsFirestoreProvider);

  @override
  void build() {}

  Future<String> getRandomUserIcon() async {
    final List<String> userIcons = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data().imageUrl).toList()),
    ];
// ignore: cascade_invocations
    userIcons.shuffle();
    return userIcons.first;
  }
}
