import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/app_images.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/travel/presentation/pages/travel_registration_screen.dart';
import 'package:egov_bd/features/travel/presentation/widgets/header_section.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_route/app_route.dart';
import '../../../home/presentation/pages/home_Screen.dart';
import '../widgets/personal_information.dart';

class AccountSettingScreen extends StatefulWidget {
  const AccountSettingScreen({super.key, required this.name});

  final String name;

  @override
  State<AccountSettingScreen> createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends State<AccountSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(widget.name),
        centerTitle: true,
        actions: [IconButton(onPressed: () { AppRoutes.pushAndRemoveUntil(context, page: HomeScreen());}, icon: Icon(Icons.home))],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingBody),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderSection(),
                SizedBox(
                  height: AppSizes.sizeBoxW,
                ),
                Text(
                  'Account Setting',
                  style: AppSizes.lbigBold(context),
                ),
                SizedBox(
                  height: AppSizes.sizeBox,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(child: Image.asset(AppImages.profile)),
                  ],
                ),
                SizedBox(
                  height: AppSizes.sizeBoxW,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Personal Information',
                      style: AppSizes.normalBoldLeading(context),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: AppColors.seed,
                        ))
                  ],
                ),
                SizedBox(
                  height: AppSizes.sizeBoxW,
                ),
                PersonalInformation(),
                SizedBox(
                  height: AppSizes.sizeBoxW,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Permanent Country of Residence',
                      style: AppSizes.normalBoldLeading(context),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: AppColors.seed,
                        ))
                  ],
                ),
                SizedBox(
                  height: AppSizes.sizeBoxW,
                ),
                Text('Country',style: AppSizes.accountText(context),),
                Text('Bangladesh',style: AppSizes.xsmallLight(context),),
                SizedBox(
                  height: AppSizes.sizeBoxW,
                ),
                Text('No./Bidg./City/State/Province',style: AppSizes.accountText(context),),
                Text('Mirpur, Dhaka 1230',style: AppSizes.xsmallLight(context),),
                SizedBox(
                  height: AppSizes.sizeBoxW,
                ),
                Text('Address Line 2',style: AppSizes.accountText(context),),
                Text('N/A ',style: AppSizes.xsmallLight(context),),
                SizedBox(height: AppSizes.sizeBoxW,),
                ElevatedButton(
                  onPressed: () {
                    AppRoutes.push(context, page: TravelRegistrationScreen());
                  },
                  child: Text(
                    'Next',
                    style:
                    AppSizes.normalTextBold(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
