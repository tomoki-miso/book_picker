import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserIconPart extends StatelessWidget {
  const UserIconPart({
    required this.userIcon,
    super.key,
  });

  final String userIcon;
  @override
  Widget build(BuildContext context) => GrassContainer(
        height: 0.2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultSize * 2),
          child: CircleAvatar(
            radius: 100,
            backgroundImage: CachedNetworkImageProvider(
              userIcon,
            ),
          ),
        ),
      );
}
