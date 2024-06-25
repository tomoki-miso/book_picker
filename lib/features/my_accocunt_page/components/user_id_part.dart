import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';

class UserIdPart extends StatelessWidget {
  const UserIdPart({
    required this.userId,
    super.key,
  });
  final String userId;

  @override
  Widget build(BuildContext context) => GrassContainer(
        height: 0.06,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultSize * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: kDefaultPadding),
                  child: Text(
                    'ID',
                    style: Styles.greyDefaultBoldStyle,
                  ),
                ),
              ),
              const SizedBox(
                width: kDefaultSize * 2,
              ),
              Text(
                userId,
                style: Styles.defaultBoldStyle,
              ),
            ],
          ),
        ),
      );
}
