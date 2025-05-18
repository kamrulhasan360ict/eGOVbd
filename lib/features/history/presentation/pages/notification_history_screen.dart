import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/history/presentation/widgets/card_widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/notification_list.dart';

class NotificationHistoryScreen extends StatelessWidget {
  const NotificationHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('History'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.paddingBody),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NotificationList(),
                CardWidgets(),
                SizedBox(
                  height: AppSizes.lsizeBox16,
                ),
                Text(
                  'Meet Always-On Government Helper',
                  style: AppSizes.smallText(context),
                ),
                SizedBox(
                  height: AppSizes.lsizeBox16,
                ),
                CardWidgets(),
                SizedBox(
                  height: AppSizes.lsizeBox16,
                ),
                Text(
                  'Go Paperless. Go Digital with eDocument',
                  style: AppSizes.smallText(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
