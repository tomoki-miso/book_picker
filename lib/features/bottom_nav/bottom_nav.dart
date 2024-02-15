import 'package:book_picker/features/selected_books/page.dart';
import 'package:book_picker/features/top/page.dart';
import 'package:flutter/material.dart';
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
      const SelectedBooksPage(),
    ];

    return Scaffold(
      body: PersistentTabView(
        context,
        controller: PersistentTabController(initialIndex: 1),
        screens: pages,
        navBarStyle: NavBarStyle.simple,
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.abc_outlined),
            title: 'Pick!',
            activeColorPrimary: const Color.fromARGB(124, 252, 0, 0),
            inactiveColorPrimary: Theme.of(context).disabledColor,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.abc_outlined),
            title: 'Selected!',
            activeColorPrimary: const Color.fromARGB(124, 252, 0, 0),
            inactiveColorPrimary: Theme.of(context).disabledColor,
          ),
        ],
      ),
    );
  }
}
