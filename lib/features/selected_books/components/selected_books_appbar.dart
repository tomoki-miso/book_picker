import 'package:book_picker/features/search_books/page.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';

class SelectedBooksAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const SelectedBooksAppbar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: ColorName.pickedBookGrass,
        title: GestureDetector(
          onTap: () async => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchBooksPage()),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorName.greySecondBase,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultSize * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: ColorName.greyBase,
                  ),
                  SizedBox(
                    width: kDefaultSize * 2,
                  ),
                  Text(
                    '本を検索してSelect！',
                    style: Styles.greyDefaultStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
