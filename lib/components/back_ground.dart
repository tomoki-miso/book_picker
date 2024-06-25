import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    required this.child,
    super.key,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      );
}
