import 'package:MediCheck/util/theme/custom_theme/elevated_button_theme.dart';
import 'package:flutter/material.dart';
import 'package:MediCheck/util/theme/custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, 
    //fontFamily:
    brightness: Brightness.light,
    primaryColor: Colors.teal, 
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true, 
    //fontFamily:
    brightness: Brightness.dark,
    primaryColor: Colors.teal, 
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,

  );
}