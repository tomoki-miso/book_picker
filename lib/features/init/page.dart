import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/loading.dart';
import 'package:book_picker/features/auth/sign_in_confirm.dart';
import 'package:book_picker/features/bottom_nav/bottom_nav.dart';
import 'package:book_picker/features/init/dl_new_version.dart';
import 'package:book_picker/features/init/view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final User? user = FirebaseAuth.instance.currentUser;
    final state = ref.watch(initModelProvider);
    return state.when(
      data: (data) {
        if (data.currentVersion.compareTo(data.recomemdedVersion) < 0) {
          /// data.currentVersion が data.recomemdedVersion よりも古い場合の処理
          return const DLNewVersion();

          /// バージョンに問題なければ認証情報を確認
        } else if (user != null) {
          return const BottomNav();
        } else {
          return const SignInConfirmPage();
        }
      },
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const LoadingPage(),
    );
  }
}
