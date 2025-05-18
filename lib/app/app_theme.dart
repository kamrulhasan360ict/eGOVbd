import 'package:flutter/material.dart';
import '../core/constant/app_colors.dart';
class AppTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      // colorScheme: ColorScheme.fromSeed(
      //     primary: AppColors.seed,
      //     seedColor: AppColors.seed,
      //     brightness: Brightness.light),
      scaffoldBackgroundColor: Colors.white,
      dividerTheme: const DividerThemeData(thickness: 0.5),
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)))
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.leadingTColor),
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
        ),
      ),


      datePickerTheme: const DatePickerThemeData(
          backgroundColor: Colors.white
      )
  );
}