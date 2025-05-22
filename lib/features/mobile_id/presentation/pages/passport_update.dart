import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/app_images.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class PassportUpdate extends StatefulWidget {
  const PassportUpdate({super.key});

  @override
  State<PassportUpdate> createState() => _PassportUpdateState();
}

class _PassportUpdateState extends State<PassportUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingBody),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Update your Passport ID?',
                style: AppSizes.lbigBold(context),
              ),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.leadingTColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedInformationCircle,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                  SizedBox(width: AppSizes.sizeBox),
                  Expanded(
                    // <-- solves overflow issue
                    child: Text(
                      'By updating your passport details, you can activate the OFW Pass and eGatQR feature',
                      style: AppSizes.smallText(context),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Image.asset(AppImages.passportScan),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Make sure your Passport is valid and not expired',
                    style: AppSizes.smallText(context),
                  )
                ],
              ),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Capture your Passport',
                    style: AppSizes.normalTextBold(context),
                  )),
              SizedBox(
                height: AppSizes.sizeBox,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,

                  // Text color
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.normalPadding),

                  ),
                  padding:
                  EdgeInsets.symmetric(vertical: AppSizes.paddingBody),
                ),
                onPressed: () {

                },
                child: Text(
                    'Skip for now',
                    style: AppSizes.normalTexButton(context)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
