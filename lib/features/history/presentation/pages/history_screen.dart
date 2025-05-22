import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../core/constant/app_colors.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text('History'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingBody),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Notification', style: AppSizes.xsmallLight(context),),
          SizedBox(height: AppSizes.lsizeBox16,),
          // Card(
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(AppSizes.paddingInside),
          //   ),
          //   color: AppColors.cardBColor,
          //   elevation: 1,
          //   margin: EdgeInsets.all(2),
          //   child: Padding(
          //     padding: const EdgeInsets.all(AppSizes.paddingBody),
          //     child: Row(
          //       children: [
          //         Expanded(
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Need help?',
          //                 style: AppSizes.lbigBold(context),
          //               ),
          //               SizedBox(height: AppSizes.sizeBox),
          //               Text(
          //                 'We\'re here to help!',
          //                 style: AppSizes.normalSize(context),
          //               ),
          //               SizedBox(height: AppSizes.lsizeBox16),
          //               Text(
          //                 'Contact us →',
          //                 style: AppSizes.xsmallLight(context),
          //               ),
          //             ],
          //           ),
          //         ),
          //         // SizedBox(width: AppSizes.lsizeBox16),
          //         Image.asset(
          //           'assets/images/image.png',
          //           width: 160,
          //           fit: BoxFit.cover,
          //         ),
          //       ],
          //     ),
          //   ),
          // )
              Container(
                height: MediaQuery.of(context).size.height * 0.46,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(AppSizes.sizeBox),
                        ),
                        child: ListTile(
                          // onTap: () {
                          //   // print('Entire item tapped! Index: $index');
                          //   Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryScreen()));
                          //
                          //
                          // },
                          leading: HugeIcon(
                            icon: HugeIcons.strokeRoundedNotification02,
                            color: AppColors.textColor,
                            size: 24.0,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Welcome',style: AppSizes.xsmallLight(context),),
                              Text('10 hours ago',style: AppSizes.smallText(context),)
                            ],
                          ),
                          subtitle: Text('Congratulation! You have successful registered with the eGovBd',style: AppSizes.smallText(context),),

                        ),
                      ),
                    );
                  },
                ),
              ),

          ],


        ),
      ),
    ),);
  }
}
