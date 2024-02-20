import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookInfoTile extends StatelessWidget {
  const BookInfoTile({
    this.title,
    this.author,
    this.imageUrl,
    this.isbn,
    this.itemPrice,
    this.itemCaption,
    this.publisherName,
    this.affiUrl,
    super.key,
  });

  final String? title;
  final String? author;
  final String? imageUrl;
  final String? isbn;
  final String? itemPrice;
  final String? itemCaption;
  final String? publisherName;
  final String? affiUrl;

  @override
  Widget build(BuildContext context) => GrassContainer(
        colors: [
          ColorName.pickedBookGrass,
          ColorName.pickedBookGrass,
        ],
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding)
                          .copyWith(top: kDefaultPadding * 1.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title ?? '',
                        style: Styles.bookInfoTitleStyle,
                      ),
                      const SizedBox(
                        height: kDefaultSize * 2,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              author ?? '',
                              style: Styles.bookAuthorStyle,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.ios_share,
                              color: ColorName.greyBase,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding * 1.5,
                ),
                CachedNetworkImage(imageUrl: imageUrl ?? ''),
                const SizedBox(
                  height: kDefaultSize * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // 横方向に中央に寄せる
                  children: [
                    const Text(
                      'ISBN-13',
                      style: Styles.greyDefaultBoldStyle,
                    ),
                    const SizedBox(
                      width: kDefaultSize * 2,
                    ),
                    Text(
                      isbn ?? '',
                      style: Styles.defaultStyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // 横方向に中央に寄せる
                  children: [
                    const Text(
                      '出版社',
                      style: Styles.greyDefaultBoldStyle,
                    ),
                    const SizedBox(
                      width: kDefaultSize * 2,
                    ),
                    Text(
                      publisherName ?? '',
                      style: Styles.defaultStyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // 横方向に中央に寄せる
                  children: [
                    const Text(
                      '価格',
                      style: Styles.greyDefaultBoldStyle,
                    ),
                    const SizedBox(
                      width: kDefaultSize * 2,
                    ),
                    Text(
                      '$itemPrice円',
                      style: Styles.greyDefaultBoldStyle,
                    ), // TODO:null円とならないように
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding * 2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text(
                    itemCaption ?? '',
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            ElevatedButton(
              onPressed: () async {
                final Uri url = Uri.parse(affiUrl!);
                print(url);
                await launchUrl(url);
              },
              child: const Text('楽天で買う'),
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ),
      );
}
