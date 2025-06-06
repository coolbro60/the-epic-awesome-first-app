import "package:MediCheck/util/theme/custom_theme/elevated_button_theme.dart";
import "package:flutter/material.dart";

import "custom_theme/text_theme.dart";
import "custom_theme/appbar_theme.dart";
import "custom_theme/bottom_sheet_theme.dart";
import "custom_theme/checkbox_theme.dart";
import "custom_theme/chip_theme.dart";
import "custom_theme/text_field_theme.dart";
import "custom_theme/outlined_button_theme.dart";
class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, 
    fontFamily: "Nunito",
    fontFamilyFallback: ["Rubik"],
    brightness: Brightness.light,
    primaryColor: Colors.teal,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: const Color.fromRGBO(246, 176, 146, 0.9),
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Nunito",
    fontFamilyFallback: ["Rubik"],
    brightness: Brightness.dark,
    primaryColor: Colors.teal,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: const Color.fromARGB(255, 236, 83, 48),
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}