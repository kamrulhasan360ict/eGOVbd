import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/app_images.dart';
import 'package:egov_bd/core/constant/app_name.dart';
import 'package:egov_bd/core/constant/app_route/app_route.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/travel/presentation/pages/travel_profile_screen.dart';
import 'package:flutter/material.dart';

class TravelScreen extends StatefulWidget {
  final String name ;
  const TravelScreen({super.key, required this.name});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(AppImages.travelBanner),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.normalPadding),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              AppRoutes.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios)),
                        SizedBox(
                          width: AppSizes.lsizeBox100,
                        ),
                          Text(widget.name),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppConstants.appName,
                          style: AppSizes.appName(context),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 240,
              left: 0,
              right: 0,
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppSizes.largePadding),
                      topLeft: Radius.circular(AppSizes.largePadding),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.paddingBody),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor:AppColors.iconBkColor,
                            radius: 30,
                            child: Icon(Icons.public,
                                size: 30, color: Colors.blue),
                          ),
                          const SizedBox(width: AppSizes.lsizeBox16),
                           Icon(Icons.swap_horiz, size: 30,
                          color: AppColors.leadingTColor,),
                           SizedBox(width: AppSizes.lsizeBox16),
                          CircleAvatar(
                            backgroundColor: AppColors.iconBkColor,
                            radius: 30,
                            child: Icon(Icons.navigation,
                                size: 30, color: AppColors.leadingTColor),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSizes.lsizeBox40,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: AppSizes.largePadding),
                        child: Column(
                          children:  [
                            Text(
                              'To continue, the following eGovPH app information need to be shared with eTravel.',
                              textAlign: TextAlign.center,
                              style: AppSizes.smallText(context)
                            ),

                            SizedBox(height: AppSizes.sizeBox),
                            Text(
                              'Name, Phone Number, and Email Address',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppSizes.lsizeBox40,
                      ),

                      ElevatedButton(
                          onPressed: () {
                            AppRoutes.push(context, page: TravelProfileScreen(name: 'Travel',));
                          },
                          child: Text(
                            'I Agree',
                            style: AppSizes.normalTextBold(context),
                          )),
                      SizedBox(
                        height: AppSizes.sizeBoxW,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppSizes.normalPadding),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: AppSizes.paddingBody),
                        ),
                        onPressed: () {
                          // Action
                        },
                        child: Text(
                          'Cancel',
                          style: AppSizes.normalTexButton(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
