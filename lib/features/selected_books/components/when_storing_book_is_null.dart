import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class StoringBookIsNull extends StatelessWidget {
  const StoringBookIsNull({
    required this.reloadPage,
    super.key,
  });

  final VoidCallback? reloadPage;

  @override
  Widget build(BuildContext context) => Center(
        child: GrassContainer(
          width: 1,
          child: Column(
            children: [
              const SizedBox(
                height: kDefaultPadding * 2,
              ),
              Lottie.asset('assets/lottie/cat_rocket.json'),
              const Text(
                '本が登録されていないようです…\n読みたい本を登録しましょう！',
                style: Styles.bookAuthorStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: kDefaultPadding * 2,
              ),
              PrimaryButton(
                width: MediaQuery.of(context).size.width * 0.8,
                text: 'ページを更新',
                onPressed: reloadPage,
              ),
            ],
          ),
        ),
      );
}
