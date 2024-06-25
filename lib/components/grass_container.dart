import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:flutter/material.dart';

class GrassContainer extends StatelessWidget {
  const GrassContainer({
    required this.child,
    super.key,
    this.height = 0.8,
    this.width = 0.8,
  });

  final Widget child;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) => BlurryContainer(
        color: ColorName.grassWhiteStart,
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.height * height,
        child: Align(alignment: Alignment.topCenter, child: child),
      );
}
