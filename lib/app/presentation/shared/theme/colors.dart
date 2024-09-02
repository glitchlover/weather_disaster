import 'package:flutter/material.dart';

class AppColors {
  // Scaffold Colors
  static const Color scaffoldBackground = Color(0xFFEFEFEF);
  static const Color scaffoldPrimary = Color(0xFFFFFFFF);

  //Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color purple = Colors.purple;
  static const Color blue = Colors.blue;
  static const Color green = Colors.green;
  static const Color yellow = Colors.yellow;
  static const Color orange = Colors.orange;
  static const Color red = Colors.red;
  static const Color pink = Colors.pink;

  // Status Colors
  static const Color statusWarning = yellow;
  static const Color statusDanger = red;
  static const Color statusSafe = green;
  static const Color statusNormal = blue;

  // Button Colors
  static const Color buttonPrimary = Color(0xFFF7FBFF);
  static const Color buttonSecondary = Color(0xFFB7D8E8);
  static const Color buttonDisabled = Color(0xFFBDBDBD);
  static const Color buttonPrimaryText = Color(0xFF313C48);
  static const Color buttonSecondaryText = Color(0xFF20496B);
  static const Color buttonDisabledText = Color(0xFF3F474E);

  static Color get darkBlue => Color.lerp(blue, Colors.indigo, .7)!;
  static Color get darkYellow => Color.lerp(yellow, Colors.red, .7)!;
  static Color get darkGreen => Color.lerp(green, Colors.green[900], .5)!;
  static Color get darkRed => Color.lerp(red, Colors.red[900], .5)!;
}
