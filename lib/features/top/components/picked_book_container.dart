import 'package:badges/badges.dart' as badges;
import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/page.dart';
import 'package:book_picker/features/top/components/stored_notify_dialog.dart';
import 'package:book_picker/features/top/view_model.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PickedBookContainer extends ConsumerWidget {
  const PickedBookContainer({
    required this.isStored,
    required this.todaysPickedBook,
    super.key,
  });

  final Book todaysPickedBook;
  final bool isStored;

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
        child: badges.Badge(
          badgeStyle: const badges.BadgeStyle(badgeColor: ColorName.skyBlue),
          badgeContent: !isStored
              ? IconButton(
                  onPressed: () async => ref
                      .read(topPageViewModelProvider.notifier)
                      .storePickedBook(),
                  icon: const FaIcon(
                    FontAwesomeIcons.heartCirclePlus,
                    color: ColorName.whiteBase,
                  ),
                )
              : IconButton(
                  onPressed: () async {
                    await showCupertinoDialog(
                      context: context,
                      builder: (context) => const StoredNotifyDialog(),
                    );
                  },
                  icon: const Icon(
                    Icons.check,
                    color: ColorName.whiteBase,
                  )),
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
                      const EdgeInsets.symmetric(horizontal: kDefaultSize * 2)
                          .copyWith(left: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
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
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.25,
                        alignment: Alignment.center,
                        child: todaysPickedBook.imageUrl ==
                                'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/noimage_01.gif?_ex=200x200'
                            ? Image.asset('assets/images/no_image.png')
                            : CachedNetworkImage(
                                imageUrl: todaysPickedBook.imageUrl ?? '',
                              ),
                      ),
                      const SizedBox(
                        width: kDefaultSize * 2,
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
        ),
      );
}
