import 'dart:io';

import 'package:book_picker/features/bottom_nav/bottom_nav.dart';
import 'package:book_picker/features/questionnaire/page/page.dart';
import 'package:book_picker/firebase/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn? googleSignIn; // 変数をグローバルスコープに移動

void configureGoogleSignIn() {
  if (Platform.isIOS) {
    googleSignIn = GoogleSignIn(
      clientId: DefaultFirebaseOptions.currentPlatform.iosClientId,
      scopes: [],
    );
  } else if (Platform.isAndroid) {
    googleSignIn = GoogleSignIn(
      clientId: DefaultFirebaseOptions.currentPlatform.androidClientId,
      scopes: [],
    );
  }
}

Future<void> signInWithGoogle(BuildContext context) async {
  try {
    configureGoogleSignIn();
    final GoogleSignInAccount? signInAccount = await googleSignIn?.signIn();
    await Future.delayed(const Duration(seconds: 2));
    final userId = FirebaseAuth.instance.currentUser?.uid;

    final userDoc =
        await FirebaseFirestore.instance.collection('user').doc(userId).get();

    if (userDoc.exists) {
      // Firestoreのドキュメントが存在する場合
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              const BottomNav(), // Firestoreのドキュメントが存在する場合の遷移先
        ),
      );
    } else {
      final GoogleSignInAuthentication auth =
          await signInAccount!.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: auth.idToken,
        accessToken: auth.accessToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      // Firestoreのドキュメントが存在しない場合

      await Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              const QuestionnairePage(), // Firestoreのドキュメントが存在しない場合の遷移先
        ),
      );
    }
  } catch (e) {
    debugPrint('サインイン中にエラーが発生しました: $e');
  }
}
