import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({required this.error, super.key});
  final Object error;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: BackGround(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 400,
                child: Lottie.asset('assets/lottie/error_cat.json'),
              ),
              const Text(
                'エラーが発生しました。',
                style: Styles.bookTitleStyle,
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),

              /// TODO:リリース前に削除
              ElevatedButton(
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('エラー'),
                      content: Text(error.toString()),
                    ),
                  );
                },
                child: const Text('エラーチェック'),
              ),
            ],
          ),
        ),
      );
}
