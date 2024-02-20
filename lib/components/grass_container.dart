import 'package:book_picker/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GrassContainer extends StatelessWidget {
  const GrassContainer({
    required this.child,
    super.key,
    this.height = 0.8,
    this.width = 0.8,
    this.colors,
  });

  final Widget child;
  final double height;
  final double width;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) => GlassmorphicContainer(
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.height * height,
        borderRadius: 20,
        blur: 8,
        border: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors ??
              [
                ColorName.grassWhiteStart,
                ColorName.grassWhiteEnd,
              ],
        ),
        borderGradient: LinearGradient(
          colors: [
            ColorName.grassWhiteStart,
            ColorName.grassWhiteEnd,
          ],
        ),
        child: child,
      );
}
