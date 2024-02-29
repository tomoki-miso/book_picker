import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';

class UserNamePart extends StatelessWidget {
  const UserNamePart({
    required this.userName,
    super.key,
  });
  final String userName;

  @override
  Widget build(BuildContext context) => GrassContainer(
        height: 0.1,
        child: Column(
          children: [
            const SizedBox(
              height: kDefaultPadding,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: kDefaultPadding),
                child: Text(
                  'ユーザーネーム',
                  style: Styles.greyDefaultBoldStyle,
                ),
              ),
            ),
            Text(
              userName,
              style: Styles.bookInfoTitleStyle,
            ),
            const SizedBox(
              height: kDefaultSize * 2,
            ),
          ],
        ),
      );
}
