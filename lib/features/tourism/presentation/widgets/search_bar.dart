import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/size.dart';

class TourismSearchBar extends StatelessWidget {
  const TourismSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Where do you want to go?',
        hintStyle: TextStyle(color: AppColors.gray),
        contentPadding:
        EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.largePadding),
          borderSide: BorderSide(
            color: AppColors.borderColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.largePadding),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 0.8,
          ),

        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.largePadding),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 0.8,
          ),
        ),
        suffixIcon: Container(
          width: 36,
          height: 36,
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: AppColors.seed,
              shape: BoxShape.circle
          ),
          child: IconButton(
            onPressed: () {
              // Search action here
            },
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ),

      ),
    );
  }
}