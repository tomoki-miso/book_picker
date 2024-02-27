import 'package:book_picker/domain/version/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
class VersionConfigRepo extends _$VersionConfigRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);
  CollectionReference<VersionConfig> get collection => ref
      .read(firestoreProvider)
      .collection(VersionConfig.collectionName)
      .withConverter<VersionConfig>(
        fromFirestore: (snapshot, _) =>
            VersionConfig.fromJson(snapshot.data()!),
        toFirestore: (data, _) => data.toJson(),
      );

  @override
  void build() {}

  Future<String> getIosVersion() async {
    final String iosVersion = await collection
        .doc('version')
        .get()
        .then((value) => value.data()!.iosVersion);

    return iosVersion;
  }

  Future<String> getAndroidVersion() async {
    final String androidVersion = await collection
        .doc('version')
        .get()
        .then((value) => value.data()!.androidVersion);

    return androidVersion;
  }
}
