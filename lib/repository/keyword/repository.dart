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
    final List<String> keywords = [
      '浅田次郎',
      '恩田陸',
      '三浦しをん',
      '東野圭吾',
      '荻原浩',
      '伊坂幸太郎',
      '角田光代',
      '湊かなえ',
      '瀬尾まいこ',
      '恩田陸',
      '村田沙耶香',
      '小川洋子',
      '凪良ゆう',
      '逢坂冬馬',
      '町田その子',
      '塩田武士',
      '知念実希人',
      '横山秀夫',
      '原田マハ',
      '吉田修一',
      '西加奈子',
      '百田尚樹',
      '万城目学',
      '森見登美彦',
      '辻村深月',
      '有川浩',
      '深緑野分',
      '小川糸',
      '北村薫',
      '佐藤正午',
      '絲山秋子',
      '中山七里',
      '朝井リョウ',
      '羽田圭介',
      '村山由佳',
      '高村薫',
      '恩田陸',
    ]; // キーワードのリスト

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
