import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/features/book_details/page.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PickedBookContainer extends StatelessWidget {
  const PickedBookContainer({
    this.title,
    this.author,
    this.itemPrice,
    this.itemCaption,
    this.imageUrl,
    super.key,
  });

  final String? title;
  final String? author;
  final int? itemPrice;
  final String? itemCaption;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () async => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BookInfoPage()),
        ),
        child: GrassContainer(
          width: 0.96,
          height: 0.4,
          child: Column(
            children: [
              const SizedBox(
                height: kDefaultPadding,
              ),

              /// 上半分
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.96,
                child: Row(
                  children: [
                    const SizedBox(
                      width: kDefaultPadding * 2,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title ?? '',
                            style: Styles.bookTitleStyle,
                          ),
                          const SizedBox(
                            height: kDefaultSize * 2,
                          ),
                          Text(
                            author ?? '',
                            style: Styles.bookAuthorStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultSize * 3,
              ),

              /// 下半分
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CachedNetworkImage(
                    imageUrl: imageUrl ?? '',
                  ),
                  const SizedBox(
                    width: kDefaultPadding * 1.5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$itemPrice 円',
                          style: Styles.defaultStyle,
                        ),
                        const SizedBox(
                          height: kDefaultSize * 2,
                        ),
                        Text(
                          itemCaption ?? '',
                          style: Styles.defaultStyle,
                          maxLines: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
