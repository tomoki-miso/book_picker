import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';

class PickBookSnackBar extends StatelessWidget {
  const PickBookSnackBar({
    required this.bookTitle,
    super.key,
  });

  final String bookTitle;

  @override
  Widget build(BuildContext context) => SnackBar(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: kDefaultPadding),
        margin: const EdgeInsetsDirectional.all(kDefaultPadding * 5),
        content: Row(
          children: [
            const Icon(Icons.abc),
            const SizedBox(
              width: kDefaultSize * 2,
            ),
            Text('$bookTitleを読みたい本リストに追加しました'),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        showCloseIcon: true,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(
          seconds: 10,
        ),
        backgroundColor: ColorName.whiteBase,
        closeIconColor: ColorName.greyBase,
      );
}
