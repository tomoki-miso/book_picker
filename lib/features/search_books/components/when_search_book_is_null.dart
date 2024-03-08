import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BookIsNull extends StatelessWidget {
  const BookIsNull({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(kDefaultSize * 2)
            .copyWith(top: kDefaultPadding * 2),
        child: GrassContainer(
          width: 1,
          height: 0.45,
          child: Column(
            children: [
              const SizedBox(
                height: kDefaultPadding,
              ),
              const Text(
                '本が見つかりませんでした.........',
                style: Styles.bookAuthorStyle,
              ),
              SizedBox(
                height: 300,
                child: Lottie.asset('assets/lottie/cat_sleep.json'),
              ),
            ],
          ),
        ),
      );
}
