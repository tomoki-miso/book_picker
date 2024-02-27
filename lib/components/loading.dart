import 'package:book_picker/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: SizedBox(
            height: 400,
            child: LoadingAnimationWidget.newtonCradle(
              color: ColorName.skyBlue,
              size: 100,
            ),
          ),
        ),
      );
}
