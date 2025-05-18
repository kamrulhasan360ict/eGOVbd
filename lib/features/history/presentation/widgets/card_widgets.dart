import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/size.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.paddingInside),
      ),
      color: AppColors.cardBColor,
      elevation: 1,
      margin: EdgeInsets.all(2),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.paddingBody),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'eGovChat AI',
                    style: AppSizes.lbigBold(context),
                  ),
                  SizedBox(height: AppSizes.sizeBox),
                  Text(
                    'Your personal Government AI chat assistant ',
                    style: AppSizes.normalSize(context),
                  ),
                  SizedBox(height: AppSizes.lsizeBox16),
                  // Text(
                  //   'Contact us →',
                  //   style: AppSizes.xsmallLight(context),
                  // ),
                ],
              ),
            ),
            // SizedBox(width: AppSizes.lsizeBox16),
            Image.asset(
              'assets/images/image.png',
              width: 160,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
