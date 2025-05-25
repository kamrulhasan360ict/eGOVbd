import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/app_images.dart';
import 'package:egov_bd/core/constant/app_name.dart';
import 'package:egov_bd/core/constant/app_route/app_route.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/travel/presentation/pages/travel_profile_screen.dart';
import 'package:flutter/material.dart';

class TravelScreen extends StatefulWidget {
  final String name;

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
            // Background Image
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 260,
              child: Image.asset(
                AppImages.travelBanner,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),


            // Top Header
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
                          icon: const Icon(Icons.arrow_back_ios),
                        ),
                        const SizedBox(width: AppSizes.lsizeBox100),
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

            // White Scrollable Container
        Positioned(
          top: 240,
          left: 0,
          right: 0,
          bottom: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSizes.largePadding),
              topRight: Radius.circular(AppSizes.largePadding),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.largePadding),
                  topRight: Radius.circular(AppSizes.largePadding),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppSizes.largePadding),
                child: Column(
                  children: [
                    const SizedBox(height: AppSizes.lsizeBox16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.iconBkColor,
                          radius: 30,
                          child: const Icon(Icons.public, size: 30, color: Colors.blue),
                        ),
                        const SizedBox(width: AppSizes.lsizeBox16),
                        const Icon(Icons.swap_horiz, size: 30, color: AppColors.seed),
                        const SizedBox(width: AppSizes.lsizeBox16),
                        CircleAvatar(
                          backgroundColor: AppColors.iconBkColor,
                          radius: 30,
                          child: const Icon(Icons.navigation, size: 30, color: AppColors.seed),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.lsizeBox40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: AppSizes.largePadding),
                      child: Column(
                        children: [
                          Text(
                            'To continue, the following eGovPH app information need to be shared with eTravel.',
                            textAlign: TextAlign.center,
                            style: AppSizes.smallText(context),
                          ),
                          const SizedBox(height: AppSizes.sizeBox),
                          const Text(
                            'Name, Phone Number, and Email Address',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSizes.lsizeBox40),
                    ElevatedButton(
                      onPressed: () {
                        AppRoutes.push(
                          context,
                          page: const TravelProfileScreen(name: 'Travel'),
                        );
                      },
                      child: Text(
                        'I Agree',
                        style: AppSizes.normalTextBold(context),
                      ),
                    ),
                    const SizedBox(height: AppSizes.sizeBoxW),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSizes.normalPadding),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSizes.paddingBody,
                        ),
                      ),
                      onPressed: () {
                        AppRoutes.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: AppSizes.normalTexButton(context),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
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
