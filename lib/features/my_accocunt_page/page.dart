import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/loading.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/domain/user/domain.dart';
import 'package:book_picker/features/my_accocunt_page/components/delete_account_part.dart';
import 'package:book_picker/features/my_accocunt_page/components/user_icon_part.dart';
import 'package:book_picker/features/my_accocunt_page/components/user_id_part.dart';
import 'package:book_picker/features/my_accocunt_page/components/user_name_part.dart';
import 'package:book_picker/features/my_accocunt_page/view_model.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAccountPage extends ConsumerWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myAccountViewModelProvider);
    return state.when(
      data: (data) {
        final UserInfoClass userData = data.userInfo;
        return Scaffold(
          appBar: const OriginalAppBar(),
          body: BackGround(
            child: ListView(
              children: [
                /// アイコン部分
                UserIconPart(userIcon: userData.userIcon),
                const SizedBox(
                  height: kDefaultPadding,
                ),

                ///　ID
                UserIdPart(userId: userData.userId),
                const SizedBox(
                  height: kDefaultSize,
                ),

                ///　ユーザーネーム
                UserNamePart(userName: userData.userName),
                const SizedBox(
                  height: kDefaultSize,
                ),

                ///　気になるワード
                ///　TODO:後に実装

                const SizedBox(
                  height: kDefaultPadding * 2,
                ),

                /// アカウント削除
                const DeleteAccountPart(),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const LoadingPage(),
    );
  }
}
