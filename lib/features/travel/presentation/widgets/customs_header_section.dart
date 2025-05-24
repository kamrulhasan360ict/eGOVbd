import 'package:flutter/material.dart';

import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/size.dart';

class CustomsHeaderSection extends StatelessWidget {
  const CustomsHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: Image.asset(
            AppImages.customImage,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: AppSizes.sizeBoxW),
        Expanded( // So the text doesn't overflow
          child: Text(
            'Bangladesh Customs \nDeclaration',
            style: AppSizes.vbigBold(context),
            overflow: TextOverflow.ellipsis, // Prevents overflow
          ),
        ),
      ],
    );
  }
}
