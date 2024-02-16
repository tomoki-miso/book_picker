import 'package:book_picker/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

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
  Widget build(BuildContext context) => GlassmorphicContainer(
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.height * height,
        borderRadius: 20,
        blur: 10,
        border: 1,
        linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ColorName.grassWhiteStart,
            ColorName.grassWhiteEnd,
          ],
        ),
        borderGradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ColorName.grassLineStart,
            ColorName.grassLineEnd,
          ],
        ),
        child: child,
      );
}
