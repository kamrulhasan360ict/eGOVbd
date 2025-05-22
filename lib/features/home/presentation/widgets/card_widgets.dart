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
              child: Image.asset(
                'assets/images/contract.png',
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );


  }
}
