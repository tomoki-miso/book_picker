import 'package:flutter/cupertino.dart';

class StoredNotifyDialog extends StatelessWidget {
  const StoredNotifyDialog({super.key});

  @override
  Widget build(BuildContext context) => CupertinoAlertDialog(
        title: const Text('この本はSELECT済みです'),
        actions: [
          CupertinoDialogAction(
            child: const Text('OK'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
}
