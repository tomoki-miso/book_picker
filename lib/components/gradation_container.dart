import 'package:book_picker/styles/colors.dart';
import 'package:flutter/material.dart';

class GradatioonContainer extends StatelessWidget {
  const GradatioonContainer({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              ColorName.gradationStart,
              // ColorName.gradationMid,
              ColorName.gradationEnd,
            ],
          ),
        ),
        child: child,
      );
}
