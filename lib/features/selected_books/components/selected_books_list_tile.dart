import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/domain/user_storing_book/domain.dart';
import 'package:book_picker/features/book_info/page.dart';
import 'package:book_picker/features/book_info/page_type.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SelectedBooksListTile extends StatelessWidget {
  const SelectedBooksListTile({
    this.selectedBook,
    super.key,
  });

  final UserStoringBook? selectedBook;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () async => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookInfoPage(
              pageType: PageType.userStoring,
              userStoringBook: selectedBook,
            ),
          ),
        ),
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
                imageUrl: selectedBook?.largeImageUrl ?? '',
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Text(
                    selectedBook?.title ?? '',
                    style: Styles.bookAuthorStyle,
                  ),
                  const SizedBox(
                    height: kDefaultSize * 2,
                  ),
                  Text(
                    selectedBook?.author ?? '',
                    style: Styles.defaultBoldStyle,
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Selectした日',
                        style: Styles.greyDefaultStyle,
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
            ],
          ),
        ),
      );
}
