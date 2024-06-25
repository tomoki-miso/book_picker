import 'package:book_picker/styles/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OriginalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OriginalAppBar({
    super.key,
    this.isWithTitle = false,
    this.withSearchBox = true,
    this.automaticallyImplyLeading = true,
    this.onTapUserIcon,
    this.imageUrl,
  });
  final bool withSearchBox;
  final bool isWithTitle;
  final bool automaticallyImplyLeading;
  final VoidCallback? onTapUserIcon;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: ColorName.pickedBookGrass,
        automaticallyImplyLeading: automaticallyImplyLeading,
        centerTitle: true,
        title: isWithTitle
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: onTapUserIcon,
                    child: CircleAvatar(
                      radius: 20, // 半径を指定することをお勧めします
                      backgroundImage: CachedNetworkImageProvider(
                        imageUrl ?? '',
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox(),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
