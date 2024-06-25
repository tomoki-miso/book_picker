import 'package:book_picker/domain/app_ad/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<AppAd> appAdFirestore(
  AppAdFirestoreRef ref,
) =>
    ref.read(firestoreProvider).collection('app_ad').withConverter<AppAd>(
          fromFirestore: (snapshot, _) => AppAd.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class AppAdRepo extends _$AppAdRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<AppAd> get collection => ref.read(appAdFirestoreProvider);

  @override
  void build() {}

  Future<List<AppAd>> getAppAds() async {
    final List<AppAd> appAds = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];

    return appAds;
  }
}
