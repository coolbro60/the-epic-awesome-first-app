import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //basic app colors
  static const Color primary = Colors.teal;
  static const Color secondary = Color.fromARGB(255, 255, 167, 100);
  static const Color accent = Colors.tealAccent;

  //gradient colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -7.07),

    colors: [
      primary, 
      accent, 
      primaryBackground,
    ]
  );

  //text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  //background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  // static const Color primaryBackground = Color(0xFFF3F5FF);
  static const Color primaryBackground = Color.fromARGB(255, 189, 236, 231);

  //background container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.textWhite.withValues(alpha: 0.1);

  //Button Colors
  static const Color buttonPrimary = primary;
  static const Color buttonSecondary = Color(0xFF6C7570);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  //Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  //error and validation colors
  static const Color error= Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  //Neutral Shades
  static const Color black = Colors.black;
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Colors.white;
}