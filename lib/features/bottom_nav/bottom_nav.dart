import 'package:book_picker/features/selected_books/book_list_type.dart';
import 'package:book_picker/features/selected_books/page.dart';
import 'package:book_picker/features/top/page.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});
  static const rootName = '/';

  @override
  Widget build(
    BuildContext context,
  ) {
    final pages = [
      const TopPage(),
      const SelectedBooksPage(
        bookListType: BookListType.userStoringBooks,
      ),
    ];

    return Scaffold(
      body: PersistentTabView(
        context,
        controller: PersistentTabController(),
        screens: pages,
        navBarStyle: NavBarStyle.simple,
        items: [
          PersistentBottomNavBarItem(
            icon: const FaIcon(FontAwesomeIcons.rotate),
            title: 'Pick!',
            activeColorPrimary: ColorName.base,
            inactiveColorPrimary: Theme.of(context).disabledColor,
          ),
          PersistentBottomNavBarItem(
            icon: const FaIcon(FontAwesomeIcons.rectangleList),
            title: 'Selected!',
            activeColorPrimary: ColorName.base,
            inactiveColorPrimary: Theme.of(context).disabledColor,
          ),
        ],
      ),
    );
  }
}
