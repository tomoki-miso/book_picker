import 'package:flutter/material.dart';

class ColorName {
  ColorName._();

  static const Color base = Color(0xFF223388);

  /// SkyBlue
  static const Color skyBlue = Color(0xFF68D1FE);
  static Color skyBlueSec = const Color(0xFF4DEAFF).withOpacity(0.4);

  /// Black
  static const Color blackBase = Color(0xFF2E2E2E);

  /// White
  static const Color whiteBase = Color(0xFFFFFFFF);

  /// grass
  static Color grassWhiteStart = const Color(0xFFFFFFFF).withOpacity(0.3);
  static Color grassWhiteEnd = const Color(0xFFFFFFFF).withOpacity(0.3);
  static Color pickedBookGrass = const Color(0xFFFFFFFF).withOpacity(0.4);

  /// Garadation
  static const Color gradationStart = Color(0xFF3C3ABF);
  static const Color gradationMid = Color(0xFF60A2B4);
  static const Color gradationEnd = Color(0xFF6AC9AF);

  /// Grey
  static const Color greyBase = Color(0xFF848484);
  static const Color greySecondBase = Color(0xFFe8e8e8);
}
