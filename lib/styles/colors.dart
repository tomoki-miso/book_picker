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
  static Color grassWhiteStart = const Color(0xFFFFFFFF).withOpacity(0.6);
  static Color grassWhiteEnd = const Color(0xFFFFFFFF).withOpacity(0.4);
  static const Color grassLineStart = Color(0xFFF5F5F5);
  static const Color grassLineEnd = Color(0xFF848484);

  /// Garadation
  static const Color gradationStart = Color(0xFF16CAFB);
  static const Color gradationMid = Color(0xFF5fc3e4);
  static const Color gradationEnd = Color(0xFFa6ffcb);

  /// Grey
  static const Color greyBase = Color(0xFF848484);
}
