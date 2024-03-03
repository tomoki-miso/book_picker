import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectedBooksListTile extends StatelessWidget {
  const SelectedBooksListTile({
    required this.onTap,
    required this.isCanSelect,
    required this.selectBook,
    this.imageUrl,
    this.title,
    this.author,
    this.day,
    this.displayStoredTime = true,
    super.key,
  });

  final bool isCanSelect;
  final VoidCallback? onTap;
  final VoidCallback? selectBook;
  final String? title;
  final String? imageUrl;
  final String? author;
  final String? day;
  final bool displayStoredTime;

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
                    if (displayStoredTime)
                      Row(
                        children: [
                          const Text(
                            'Selectした日',
                            style: Styles.greyDefaultBoldStyle,
                          ),
                          const SizedBox(
                            width: kDefaultSize * 2,
                          ),
                          Text(
                            day ?? '',
                            style: Styles.defaultStyle,
                          ),
                        ],
                      )
                    else
                      const SizedBox(),
                  ],
                ),
              ),

              /// 右側のボタン
              if (isCanSelect)
                IconButton(
                  iconSize: 18,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) => ColorName.skyBlue,
                    ),
                  ),
                  onPressed: selectBook,
                  icon: const FaIcon(
                    FontAwesomeIcons.heartCirclePlus,
                    color: ColorName.whiteBase,
                  ),
                )
              else
                const SizedBox(),
              const SizedBox(
                width: kDefaultPadding,
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
            ],
          ),
        ),
      );
}
