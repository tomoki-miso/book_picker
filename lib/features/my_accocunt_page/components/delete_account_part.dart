import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/features/top/components/top_delete_account_alert_dialog.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteAccountPart extends StatelessWidget {
  const DeleteAccountPart({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 5,
        ),
        child: PrimaryButton(
          isWithWidget: true,
          height: MediaQuery.of(context).size.height * 0.05,
          onPressed: () async {
            await showCupertinoDialog(
              context: context,
              builder: (context) => const TopDeleteAccountAlertDialog(),
            );
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.delete_forever),
              SizedBox(
                width: kDefaultSize * 2,
              ),
              Text('退会する'),
            ],
          ),
        ),
      );
}
