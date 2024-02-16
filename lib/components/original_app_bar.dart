import 'package:book_picker/styles/colors.dart';
import 'package:flutter/material.dart';

class OriginalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OriginalAppBar({
    super.key,
    this.withIcon = true,
    this.automaticallyImplyLeading = true,
  });
  final bool withIcon;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) => AppBar(
        iconTheme: const IconThemeData(color: ColorName.greyBase),
        backgroundColor: ColorName.skyBlueSec,
        automaticallyImplyLeading: automaticallyImplyLeading,
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
