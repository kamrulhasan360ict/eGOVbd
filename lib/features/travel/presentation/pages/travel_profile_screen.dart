import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/app_images.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/home/presentation/pages/home_Screen.dart';
import 'package:egov_bd/features/travel/presentation/pages/account_setting_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_route/app_route.dart';
import '../widgets/header_section.dart';

class TravelProfileScreen extends StatefulWidget {
  const TravelProfileScreen({super.key, required this.name});

  final String name;

  @override
  State<TravelProfileScreen> createState() => _TravelProfileScreenState();
}

class _TravelProfileScreenState extends State<TravelProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(widget.name),
        centerTitle: true,
        actions: [IconButton(onPressed: () {
          AppRoutes.pushAndRemoveUntil(context, page: HomeScreen());
        }, icon: Icon(Icons.home))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            SizedBox(
              height: AppSizes.lsizeBox16,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppImages.bdLogo,
                      height: 460,
                      // width: double.infinity,
                    ),
                    Positioned(
                      top: 100,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: EdgeInsets.all(AppSizes.normalPadding),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    AppImages.profile,
                                  ),
                                  radius: 20,
                                ),
                                SizedBox(
                                  height: AppSizes.sizeBox,
                                ),
                                Text(
                                  'MD.ZAYED',
                                  style: AppSizes.bolds(context),
                                ),
                                SizedBox(
                                  height: AppSizes.sizeBox,
                                ),
                                Text('Passport Number\nA0145975'),
                                SizedBox(
                                  height: AppSizes.sizeBoxW,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    AppRoutes.push(context,
                                        page: AccountSettingScreen(
                                          name: 'Travel',
                                        ));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'New Travel Declaration',
                                        style: AppSizes.normalTextBold(context),
                                      ),
                                      SizedBox(
                                        width: AppSizes.sizeBox,
                                      ),
                                      Icon(
                                        Icons.arrow_circle_right,
                                        color: AppColors.backgroundColor,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: AppSizes.sizeBoxW,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade200,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          AppSizes.normalPadding),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: AppSizes.paddingBody,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Add Family Member',
                                    style: AppSizes.normalTexButton(context),
                                  ),
                                ),
                                SizedBox(
                                  height: AppSizes.sizeBoxW,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Travel History',
                                      style: AppSizes.bolds(context),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: AppSizes.sizeBoxW,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(AppImages.history),
                    Positioned(
                        top: 170,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Text('No Record Found!',style: AppSizes.xsmallLight(context),),
                            Text('Declare your Travel by clicking the ',style: AppSizes.hinTextColor(context),),
                            Text('New Travel declaration button above'),
                          ],
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
