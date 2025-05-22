import 'package:egov_bd/core/constant/app_route/app_route.dart';
import 'package:egov_bd/features/lgus/presentation/pages/lgus_screen.dart';
import 'package:egov_bd/features/ngas/presentation/pages/ngas_screen.dart';
import 'package:egov_bd/features/travel/presentation/pages/travel_screen.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/size.dart';
import '../../../jobs/presentation/pages/job_screen.dart';
import '../../../tourism/presentation/pages/tourism_screen.dart';

class CatagoriList extends StatelessWidget {
  const CatagoriList({
    super.key,
    required this.icons,
    required this.labels,
    required this.secendicons,
    required this.secendLabels,
  });

  final List<IconData> icons;
  final List<String> labels;
  final List<IconData> secendicons;
  final List<String> secendLabels;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(icons.length, (index) {
            return GestureDetector(
              onTap: () {
                Widget targetScreen;

                if (index == 0) {
                  targetScreen = NgaSScreen();
                } else if (index == 1) {
                  targetScreen = LgusScreen();
                } else if (index == 2) {
                  targetScreen = JobScreen();
                } else {
                  targetScreen = TourismScreen();
                }
                AppRoutes.push(context, page: targetScreen);
              },
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.iconBkColor,
                    radius: 30,
                    child: HugeIcon(
                      icon: icons[index],
                      color: AppColors.iConColor,
                      size: 25.0,
                    ),
                  ),
                  const SizedBox(height: AppSizes.sizeBox),
                  Text(
                    labels[index],
                    style: AppSizes.catagoriTextSize(context),
                  ),
                ],
              ),
            );
          }),
        ),
        SizedBox(
          height: AppSizes.lsizeBox16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(icons.length, (index) {
            return GestureDetector(
              onTap: () {
                Widget targetScreen;

                if (index == 0) {
                  targetScreen = TravelScreen(name: 'Travel',);
                } else if (index == 1) {
                  targetScreen = LgusScreen();
                } else if (index == 2) {
                  targetScreen = JobScreen();
                } else {
                  targetScreen = TourismScreen();
                }
                AppRoutes.push(context, page: targetScreen);
              },
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.iconBkColor,
                    radius: 30,
                    child: HugeIcon(
                      icon: secendicons[index],
                      color: AppColors.leadingTColor,
                      size: 25.0,
                    ),
                  ),
                   SizedBox(height: AppSizes.sizeBox),
                  Text(
                    secendLabels[index],
                    style: AppSizes.catagoriTextSize(context),
                  ),
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}
