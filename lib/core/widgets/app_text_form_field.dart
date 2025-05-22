import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  final String hintText;

  final bool obscureText;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.controller,

    required this.hintText,

    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppSizes.hinTextColor(context), // Custom hint text style
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.normalPadding),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 0.8,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.normalPadding),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 0.8,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.normalPadding),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 0.8,
          ),
        ),
      ),
    );


  }
}
