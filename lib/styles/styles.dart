import 'package:book_picker/styles/colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static const bookTitleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorName.blackBase,
    overflow: TextOverflow.ellipsis,
  );

  static const bookAuthorStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ColorName.blackBase,
    overflow: TextOverflow.ellipsis,
  );

  static const defaultStyle = TextStyle(
    fontSize: 12,
    color: ColorName.blackBase,
    overflow: TextOverflow.ellipsis,
  );

  static const topCaptionStyle = TextStyle(
    fontSize: 12,
    color: ColorName.blackBase,
    overflow: TextOverflow.ellipsis,
  );

  static const greyDefaultStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: ColorName.greyBase,
  );

  static const defaultBoldStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: ColorName.blackBase,
    overflow: TextOverflow.ellipsis,
  );
}

const double kDefaultPadding = 16;
const double kDefaultSize = 4;
