import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';

class Carouseltitle extends StatelessWidget {
  const Carouseltitle(
      {required this.onPressed, required this.title, super.key});

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: kDefaultPadding * 2,
          left: kDefaultPadding,
          bottom: kDefaultSize * 2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Styles.greyDefaultBoldStyle,
            ),
            TextButton(
              onPressed: onPressed,
              child: const Text(
                'もっとみる ＞',
                style: Styles.greyDefaultStyle,
              ),
            ),
          ],
        ),
      );
}
