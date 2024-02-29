import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';

class SelectBookFloatingButton extends StatelessWidget {
  const SelectBookFloatingButton({
    required this.buttonText,
    required this.onPressed,
    super.key,
  });

  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: PrimaryButton(
          isWithWidget: true,
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.search),
              const SizedBox(
                width: kDefaultSize * 2,
              ),
              Text(buttonText),
            ],
          ),
        ),
      );
}
