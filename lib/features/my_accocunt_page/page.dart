import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/components/loading.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/domain/user/domain.dart';
import 'package:book_picker/features/my_accocunt_page/view_model.dart';
import 'package:book_picker/features/top/components/top_delete_account_alert_dialog.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
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
                GrassContainer(
                  height: 0.2,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultSize * 2),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: CachedNetworkImageProvider(
                        userData.userIcon,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),

                ///　ユーザーネーム
                GrassContainer(
                  height: 0.06,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultSize * 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: kDefaultPadding),
                            child: Text(
                              'ID',
                              style: Styles.greyDefaultBoldStyle,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: kDefaultSize * 2,
                        ),
                        Text(
                          userData.userId,
                          style: Styles.defaultBoldStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: kDefaultSize,
                ),

                ///　ユーザーネーム
                GrassContainer(
                  height: 0.1,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: kDefaultPadding),
                          child: Text(
                            'ユーザーネーム',
                            style: Styles.greyDefaultBoldStyle,
                          ),
                        ),
                      ),
                      Text(
                        userData.userName,
                        style: Styles.bookInfoTitleStyle,
                      ),
                      const SizedBox(
                        height: kDefaultSize * 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: kDefaultSize,
                ),

                ///　気になるワード
                ///　TODO:後に実装
                // GrassContainer(
                //   height: 0.16,
                //   child: Column(
                //     children: [
                //       const SizedBox(
                //         height: kDefaultPadding,
                //       ),
                //       const Align(
                //         alignment: Alignment.centerLeft,
                //         child: Padding(
                //           padding: EdgeInsets.only(left: kDefaultPadding),
                //           child: Text(
                //             '気になるワード',
                //             style: Styles.greyDefaultBoldStyle,
                //           ),
                //         ),
                //       ),
                //       Wrap(
                //         spacing: 1,
                //         runSpacing: 1,
                //         children: userData.words.take(3).map((words) {
                //           final isLast = words == userData.words.last;
                //           return Text(
                //             '$words${isLast ? '' : ','}',
                //           );
                //         }).toList(),
                //       ),
                //       const SizedBox(
                //         height: kDefaultPadding,
                //       ),
                //       PrimaryButton(
                //         height: MediaQuery.of(context).size.height * 0.05,
                //         onPressed: () {},
                //         text: '気になるワードを編集する',
                //       ),
                //       const SizedBox(
                //         height: kDefaultPadding,
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: kDefaultPadding * 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 5,
                  ),
                  child: PrimaryButton(
                    isWithWidget: true,
                    height: MediaQuery.of(context).size.height * 0.05,
                    onPressed: () async {
                      await showCupertinoDialog(
                        context: context,
                        builder: (context) =>
                            const TopDeleteAccountAlertDialog(),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.delete_forever),
                        SizedBox(
                          width: kDefaultSize * 2,
                        ),
                        Text('退会する'),
                      ],
                    ),
                  ),
                ),
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
