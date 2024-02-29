import 'package:book_picker/features/after_sign_out.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopDeleteAccountAlertDialog extends StatelessWidget {
  const TopDeleteAccountAlertDialog({super.key});

  @override
  Widget build(BuildContext context) => CupertinoAlertDialog(
        title: const Text('本当に退会しますか？'),
        content: const Text('退会すると、あなたに関する情報はすべて削除されていしまいます。'),
        actions: [
          CupertinoDialogAction(
            child: const Text('はい'),
            onPressed: () async => _deleteAccount(context),
          ),
          CupertinoDialogAction(
            child: const Text('いいえ'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      );
}

Future<void> _deleteAccount(BuildContext context) async {
  final user = FirebaseAuth.instance.currentUser;
  final uid = user?.uid;
  // userコレクションを削除
  await FirebaseFirestore.instance.collection('user').doc(uid).delete();

  await user?.delete();
  await FirebaseAuth.instance.currentUser?.delete();

  // ignore: use_build_context_synchronously
  await Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const AfterSignOutPage(),
    ),
  );
}
