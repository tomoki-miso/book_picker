import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/page.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GrassCarouselItem extends StatelessWidget {
  const GrassCarouselItem({
    required this.book,
    super.key,
  });

  final Book book;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () async => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookInfoPage(book: book)),
        ),
        child: GrassContainer(
          width: 0.4,
          child: Column(
            children: [
              const SizedBox(
                height: kDefaultSize * 2,
              ),
              Text(
                book.title ?? '',
                style: Styles.defaultStyle,
              ),
              const SizedBox(
                height: kDefaultSize * 2,
              ),
              Text(
                book.author ?? '',
                style: Styles.greyDefaultBoldStyle,
              ),
              const SizedBox(
                height: kDefaultSize * 2,
              ),
              CachedNetworkImage(
                height: MediaQuery.of(context).size.height * 0.17,
                imageUrl: book.imageUrl ?? '',
              ),
            ],
          ),
        ),
      );
}
