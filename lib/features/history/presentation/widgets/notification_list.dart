import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/size.dart';
import '../pages/history_screen.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius:
                BorderRadius.circular(AppSizes.sizeBox),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HistoryScreen()));
                },
                leading: HugeIcon(
                  icon: HugeIcons.strokeRoundedNotificationBlock02,
                  color: AppColors.textColor,
                  size: 24.0,
                ),
                title: Text(
                  'Notification',
                  style: AppSizes.xsmallLight(context),
                ),
                trailing: HugeIcon(
                  icon: HugeIcons.strokeRoundedArrowRight01,
                  color: Colors.black,
                  size: 24.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
