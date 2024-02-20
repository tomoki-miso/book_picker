import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/page.dart';
import 'package:book_picker/features/top/view_model.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PickedBookContainer extends ConsumerWidget {
  const PickedBookContainer({
    required this.todaysPickedBook,
    super.key,
  });

  final Book todaysPickedBook;

  @override
  Widget build(BuildContext context, WidgetRef ref) => GestureDetector(
        onTap: () async => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookInfoPage(
              book: todaysPickedBook,
            ),
          ),
        ),
        child: GrassContainer(
          colors: [
            ColorName.pickedBookGrass,
            ColorName.pickedBookGrass,
          ],
          width: 0.9,
          height: 0.4,
          child: Column(
            children: [
              const SizedBox(
                height: kDefaultPadding,
              ),

              /// 上半分
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultSize * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: kDefaultSize * 2,
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              todaysPickedBook.title ?? '',
                              style: Styles.bookTitleStyle,
                            ),
                            const SizedBox(
                              height: kDefaultSize * 2,
                            ),
                            Text(
                              todaysPickedBook.author ?? '',
                              style: Styles.bookAuthorStyle,
                            ),
                          ],
                        ),
                      ),
                    ),

                    /// 共有ボタン
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.ios_share,
                        color: ColorName.greyBase,
                      ),
                    ),

                    /// 保存ボタン
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorName.skyBlue,
                        foregroundColor: ColorName.whiteBase,
                        shape: const CircleBorder(),
                      ),
                      onPressed: () async => ref
                          .read(topPageViewModelProvider.notifier)
                          .storePickedBook(),
                      child: const Icon(Icons.people),
                    ),
                    const SizedBox(
                      width: kDefaultPadding,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding * 1.5,
              ),

              /// 下半分
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultSize * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: kDefaultSize,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: CachedNetworkImage(
                        imageUrl: todaysPickedBook.imageUrl ?? '',
                      ),
                    ),
                    const SizedBox(
                      width: kDefaultPadding,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.42,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${todaysPickedBook.itemPrice}円',
                            style: Styles.defaultStyle,
                          ),
                          const SizedBox(
                            height: kDefaultSize * 2,
                          ),
                          Text(
                            todaysPickedBook.itemCaption ?? '',
                            style: Styles.defaultStyle,
                            maxLines: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
