import 'package:book_picker/domain/user/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<UserInfoClass> userInfoFirestore(
  UserInfoFirestoreRef ref,
) =>
    ref.read(firestoreProvider).collection('user').withConverter<UserInfoClass>(
          fromFirestore: (snapshot, _) =>
              UserInfoClass.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class UserInfoRepo extends _$UserInfoRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<UserInfoClass> get collection =>
      ref.read(userInfoFirestoreProvider);

  @override
  void build() {}

  Future<UserInfoClass> getUserInfo() async => collection
          .doc(ref.read(firebaseAuthProvider).currentUser!.uid)
          .get()
          .then((value) {
        if (value.data() == null) {
          final String user = ref.read(firebaseAuthProvider).currentUser!.uid;
          throw ArgumentError('$userデータが存在しません');
        }
        return value.data()!;
      });

  Future<void> saveUserInfo(UserInfoClass userInfo) async {
    await collection.doc(userInfo.userId).set(userInfo);
  }
}
