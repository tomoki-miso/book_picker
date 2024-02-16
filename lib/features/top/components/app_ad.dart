import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppAd extends StatelessWidget {
  const AppAd({required this.imageUrl, required this.appUrl, super.key});

  final String imageUrl;
  final String appUrl;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: () async {
            final Uri url = Uri.parse(appUrl);
            print(url);
            await launchUrl(url);
          },
          child: GrassContainer(
            height: 0.2,
            width: 1,
            child: Padding(
              padding: const EdgeInsets.all(kDefaultSize * 3),
              child: CachedNetworkImage(imageUrl: imageUrl),
            ),
          ),
        ),
      );
}
