import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GrassCarouselItem extends StatelessWidget {
  const GrassCarouselItem({
    this.title,
    this.author,
    this.imageUrl,
    super.key,
  });

  final String? title;
  final String? author;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) => GrassContainer(
        width: 0.4,
        child: Column(
          children: [
            const SizedBox(
              height: kDefaultSize * 2,
            ),
            Text(
              title ?? '',
              style: Styles.defaultStyle,
            ),
            const SizedBox(
              height: kDefaultSize * 2,
            ),
            Text(
              author ?? '',
              style: Styles.greyDefaultStyle,
            ),
            const SizedBox(
              height: kDefaultSize * 2,
            ),
            CachedNetworkImage(
              height: MediaQuery.of(context).size.height * 0.17,
              imageUrl: imageUrl ?? '',
            ),
          ],
        ),
      );
}
