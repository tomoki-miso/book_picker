import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TopDrawerPart extends StatelessWidget {
  const TopDrawerPart({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: ColorName.skyBlue,
              ),
              child: Text(
                'ブクピク！',
              ),
            ),
            ListTile(
              title: const Text(
                'アプリの使い方',
                style: Styles.defaultBoldStyle,
              ),
              onTap: () async {
                final Uri url = Uri.parse(
                  'https://jumbled-shock-24d.notion.site/af075a403afd4251b8642457b8ccb839?pvs=74',
                );
                await launchUrl(url);
              },
            ),
            ListTile(
              title: const Text(
                'ご意見・お問い合わせ',
                style: Styles.defaultBoldStyle,
              ),
              onTap: () async {},
            ),
          ],
        ),
      );
}
