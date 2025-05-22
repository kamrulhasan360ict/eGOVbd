import 'dart:ui';

import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppSizes{

  static const double imageHeight = 240.0;
  static const double locationHeight = 300.0;

  static const double sizeBox = 6;
  static const double sizeBoxW = 10;
  static const double lsizeBox40 = 40;
  static const double lsizeBox100 = 100;
  static const double lsizeBox24 = 24;
  static const double lsizeBox16 = 16;
  static const double normalPadding = 8;
  static const double paddingBody = 16;
  static const double paddingInside = 10;
  static const double largePadding = 24;
  //  for Font Size
  static const double fontSize2 = 2;
  static const double fontSizeExtraSmall = 10;
  static const double fontSizeSmall = 12;
  static const double fontSizeDefault = 14;
  static const double fontSizeLarge = 16;
  static const double fontSizeExtraLarge = 18;
  static const double fontSizeOverLarge = 24;
  static const double fontSizeMaxLarge = 30;

//   text
  static TextStyle catagoriTextSize(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey.shade800); // 14,  700
  static TextStyle locationName(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w800,fontSize: 12,color: Colors.black); // 14,  700

  static TextStyle normalTexButton(context) => Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w400, fontSize: 14,color: AppColors.leadingTColor); // 20,  500

  static TextStyle smallText(context) => Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w400, fontSize: 14,color: Colors.grey.shade600); // 10,  400
  static TextStyle hinTextColor(context) => Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w400, fontSize: 14,color: Colors.grey); // 10,  400

  static TextStyle appName(context) => Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w800, fontSize: 26,color: AppColors.leadingTColor); // 20,  500
  static TextStyle lbigBold(context) => Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w800, fontSize: 20); // 20,  500

  static TextStyle normalSize(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600,fontSize: 14,color: AppColors.gray); // 14,  700
  static TextStyle normalTextBold(context) => Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w400, fontSize: 14,color: AppColors.backgroundColor); // 20,  500

  static TextStyle normalBold(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400,fontSize: 20); // 14,  700
  static TextStyle vbigBold(context) => Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w800, fontSize: 20,color: AppColors.leadingTColor); // 20,  500
  static TextStyle normalBoldLeading(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w800,fontSize: 16,color: AppColors.leadingTColor); // 14,  700
  static TextStyle xsmallLight(context) => Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600, fontSize: 14); // 10,  400
  static TextStyle normalBolds(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600,fontSize: 16,color: AppColors.leadingTColor); // 14,  700
  static TextStyle bolds(context) => Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600,fontSize: 16,); // 14,  700
  static TextStyle hadingTextBold(context) => Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w800, fontSize: 20,color: AppColors.backgroundColor); // 20,  500
}