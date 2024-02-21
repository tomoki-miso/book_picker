import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SelectedBooksListTile extends StatelessWidget {
  const SelectedBooksListTile({
    required this.onTap,
    this.imageUrl,
    this.title,
    this.author,
    super.key,
  });

  final VoidCallback? onTap;
  final String? title;
  final String? imageUrl;
  final String? author;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: GrassContainer(
          width: 1,
          height: 0.15,
          child: Row(
            children: [
              const SizedBox(
                width: kDefaultPadding * 1.5,
              ),
              CachedNetworkImage(
                width: MediaQuery.of(context).size.width * 0.2,
                imageUrl: imageUrl ?? '',
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      title ?? '',
                      style: Styles.bookAuthorStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: kDefaultSize * 2,
                    ),
                    Text(
                      author ?? '',
                      style: Styles.defaultBoldStyle,
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Selectした日',
                          style: Styles.greyDefaultBoldStyle,
                        ),
                        SizedBox(
                          width: kDefaultSize * 2,
                        ),
                        Text(
                          '2024/2/29',
                          style: Styles.defaultStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
            ],
          ),
        ),
      );
}
