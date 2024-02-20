import 'package:book_picker/domain/keywords/domain.dart';
import 'package:book_picker/firebase/firebase_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<Keyword> keywordFirestore(
  KeywordFirestoreRef ref,
) =>
    ref.read(firestoreProvider).collection('keywords').withConverter<Keyword>(
          fromFirestore: (snapshot, _) => Keyword.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class KeywordRepo extends _$KeywordRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<Keyword> get collection =>
      ref.read(keywordFirestoreProvider);

  @override
  void build() {}

  /// キーワード追加
  Future<void> setKeywords() async {
    final CollectionReference collection =
        FirebaseFirestore.instance.collection('keywords');
    final List<String> keywords = []; // キーワードのリスト

    for (final String keyword in keywords) {
      await collection.add({
        'keyword': keyword,
      });
    }
  }

  /// キーワード取得
  Future<String> getKeywords() async {
    final keywords = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data().keyword).toList()),
    ];
    keywords.shuffle();
    final String keyword = keywords.first;
    print(keyword);
    return keyword;
  }
}
