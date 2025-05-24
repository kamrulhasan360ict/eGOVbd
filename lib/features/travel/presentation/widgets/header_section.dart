import 'package:flutter/material.dart';

import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/size.dart';


class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: AppSizes.paddingBody,right: AppSizes.paddingBody),
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 100,
            child: Image.asset(AppImages.eTravel),
          ),
          const Spacer(),
          const Text('Hi,'),
          SizedBox(width: AppSizes.sizeBox),
          Text(
            'MD.ZAYED',
            style: AppSizes.bolds(context),
          ),
          SizedBox(width: AppSizes.sizeBox),
          Image.asset(
            AppImages.bdLogo,
            width: 30,
            height: 30,
          ),
          SizedBox(width: AppSizes.sizeBox),
          const Icon(Icons.menu),
        ],
      ),
    );
  }
}
