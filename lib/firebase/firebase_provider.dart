import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);
final firebaseAuthProvider = Provider((ref) => auth.FirebaseAuth.instance);
// remote configのprovider
final remoteConfigProvider = FutureProvider<FirebaseRemoteConfig>(
  (ref) async {
    final rc = FirebaseRemoteConfig.instance;

    // 例）flavorで開発環境ごとにintervalを分ける場合
    // final interval = flavor.isDev ? Duration.zero : const Duration(hours: 1);
    const interval = Duration.zero;

    // タイムアウトとフェッチのインターバル時間を設定する
    await rc.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: interval,
      ),
    );
    return rc;
  },
);
