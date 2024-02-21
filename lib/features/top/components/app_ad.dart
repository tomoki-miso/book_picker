import 'dart:io';

import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/components/primary_dialog.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppAdTile extends StatelessWidget {
  const AppAdTile({
    this.imageUrl,
    this.appUrl,
    this.googleUrl,
    super.key,
  });

  final String? imageUrl;
  final String? appUrl;
  final String? googleUrl;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: () async {
            if (Platform.isIOS && appUrl != '') {
              final Uri url = Uri.parse(appUrl!);
              await launchUrl(url);
            } else if (Platform.isAndroid && googleUrl != '') {
              final Uri url = Uri.parse(googleUrl!);
              await launchUrl(url);
            } else {
              await showDialog<void>(
                context: context,
                builder: (_) => const PrimaryDialog(
                  title: 'URLが見つかりませんでした。',
                  contentWidget: Text('このアプリのURLが見つかりませんでした。'),
                ),
              );
            }
          },
          child: GrassContainer(
            height: 0.2,
            width: 1,
            child: Padding(
              padding: const EdgeInsets.all(kDefaultSize * 3),
              child: CachedNetworkImage(imageUrl: imageUrl!),
            ),
          ),
        ),
      );
}
