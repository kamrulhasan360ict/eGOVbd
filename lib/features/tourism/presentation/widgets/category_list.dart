import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';

class CategoryList extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.terrain, 'label': 'Mountain'},
    {'icon': Icons.eco, 'label': 'Forest'},
    {'icon': Icons.beach_access, 'label': 'Beach'},
    {'icon': Icons.park, 'label': 'Park'},
    {'icon': Icons.museum, 'label': 'Museum'},
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // height of the category list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: AppColors.iconBkColor,
                  child: Icon(
                    category['icon'],
                    size: 30,
                    color: AppColors.leadingTColor,
                  ),
                ),
                SizedBox(height: AppSizes.sizeBoxW),
                Text(
                  category['label'],
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
