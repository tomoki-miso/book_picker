import 'package:book_picker/components/primary_button.dart';
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
        child: Column(
          children: [
            Lottie.asset('assets/lottie/cat_rocket.json'),
            const Text('本が登録されていないようです…\n読みたい本を登録しましょう！'),
            PrimaryButton(
              text: 'ページを更新',
              onPressed: reloadPage,
            ),
          ],
        ),
      );
}
