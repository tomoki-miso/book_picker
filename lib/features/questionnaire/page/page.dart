import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/features/bottom_nav/bottom_nav.dart';
import 'package:book_picker/features/questionnaire/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuestionnairePage extends ConsumerWidget {
  const QuestionnairePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionnaireViewModelProvider);
    final notifier = ref.read(questionnaireViewModelProvider.notifier);

    return state.when(
      data: (data) => Scaffold(
        appBar: AppBar(title: const Text('ユーザー登録')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.all(50)),
                const Text(
                  'ニックネーム',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    controller: data.userNameController,
                    onSubmitted: (userName) async {
                      await notifier.inputUserName();
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.all(20)),
                Center(
                  child: PrimaryButton(
                    width: MediaQuery.of(context).size.width * 0.8,
                    onPressed: () async {
                      await notifier.inputUserName();
                      if (data.userNameController.text == '') {
                        // ignore: use_build_context_synchronously
                        await showAlertDialog(context);
                      } else {
                        await notifier.saveUserInfo().then(
                              (value) async => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const BottomNav(),
                                ),
                              ),
                            );
                      }
                    },
                    text: '次へ進む',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      error: (error, stackTrace) => const Text('error'),
      loading: () => const Text('loading'),
    );
  }

  Future<dynamic> showAlertDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('情報を入力してください'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('はい'),
            ),
          ],
        ),
      );
}
