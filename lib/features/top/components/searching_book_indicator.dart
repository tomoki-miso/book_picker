import 'package:book_picker/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchingBookIndicator extends StatelessWidget {
  const SearchingBookIndicator({super.key});

  @override
  Widget build(BuildContext context) => Container(
        color: ColorName.whiteBase.withOpacity(0.6),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('ほんをさがしています・・・'),
            SizedBox(
              height: 300,
              child: Lottie.asset('assets/lottie/cat_rocket.json'),
            ),
            const CircularProgressIndicator(),
          ],
        ),
      );
}
