import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_name.dart';
import '../../../../core/constant/size.dart';
import '../../../history/presentation/pages/notification_history_screen.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppConstants.appName,
              style: AppSizes.appName(context),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationHistoryScreen()));

              },
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedNotificationBlock02,
                color: AppColors.leadingTColor,
                size: 24.0, // optional: match your design
              ),
            ),
          ],
        ),
        SizedBox(height: AppSizes.lsizeBox16),

        // Profile Section
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
            ),
            SizedBox(width: AppSizes.sizeBoxW),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('HI, MD', style: AppSizes.appName(context)),
                  Text('ka*******ict@gmail.com'),
                  SizedBox(height: AppSizes.sizeBox),
                  SizedBox(
                    height: 30,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade100,
                        padding: EdgeInsets.symmetric(horizontal: 12),

                      ),
                      child: Text('For Approval',style: AppSizes.normalSize(context),),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(width: AppSizes.sizeBoxW),
            Image.asset(
              'assets/images/image.png',
              width: 140,
              height: 100,
            ),
          ],
        ),
      ],
    );
  }
}