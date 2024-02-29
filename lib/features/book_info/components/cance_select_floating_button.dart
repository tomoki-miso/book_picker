import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoCancelFloatingButton extends StatelessWidget {
  const InfoCancelFloatingButton({required this.onPressed, super.key});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: PrimaryButton(
          isWithWidget: true,
          onPressed: onPressed,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.heartCircleMinus),
              SizedBox(
                width: kDefaultSize * 2,
              ),
              Text('この本のSELECTを取り消す'),
            ],
          ),
        ),
      );
}
