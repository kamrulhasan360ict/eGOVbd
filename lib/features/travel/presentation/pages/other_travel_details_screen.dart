import 'package:egov_bd/core/constant/app_images.dart';
import 'package:egov_bd/features/travel/presentation/pages/signature_screen.dart';
import 'package:egov_bd/features/travel/presentation/widgets/header_section.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_route/app_route.dart';
import '../../../../core/constant/size.dart';
import '../widgets/custom_radio_button.dart';
import '../widgets/customs_header_section.dart';

class OtherTravelDetailsScreen extends StatefulWidget {
  const OtherTravelDetailsScreen({super.key});

  @override
  State<OtherTravelDetailsScreen> createState() =>
      _OtherTravelDetailsScreenState();
}

class _OtherTravelDetailsScreenState extends State<OtherTravelDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text('Travel'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSection(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(AppSizes.normalPadding),
                color: AppColors.leadingTColor,
                child: Text(
                  'Bangladesh Travel Information System',
                  style: AppSizes.stackText(context),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(AppSizes.paddingBody),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomsHeaderSection(),
                    Center(
                      child: Text(
                        'Customs Declaration other travel information',
                        style: AppSizes.accountText(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      'Other Travel Details',
                      style: AppSizes.lbigBold(context),
                    ),
                    SizedBox(height: AppSizes.sizeBoxW,),

                    Text(
                      'Accompanied family members',
                      style: AppSizes.bolds(context),
                    ),

                    SizedBox(height: AppSizes.sizeBox,),

                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                        BorderRadius.circular(AppSizes.normalPadding),
                      ),
                      padding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Below 18 yrs. old',
                              style: AppSizes.accountText(context)),
                          Text(
                            '0',
                            style: AppSizes.bolds(context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.sizeBox,),

                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                        BorderRadius.circular(AppSizes.normalPadding),
                      ),
                      padding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('18 yrs. old and above',
                              style: AppSizes.accountText(context)),
                          Text(
                            '0',
                            style: AppSizes.bolds(context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.sizeBox,),

                    Text(
                      'Accompanied family members',
                      style: AppSizes.bolds(context),
                    ),
                    SizedBox(height: AppSizes.sizeBox,),

                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                        BorderRadius.circular(AppSizes.normalPadding),
                      ),
                      padding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Checked-in ([pcs)',
                              style: AppSizes.accountText(context)),
                          Text(
                            '0',
                            style: AppSizes.bolds(context),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: AppSizes.sizeBox,),

                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                        BorderRadius.circular(AppSizes.normalPadding),
                      ),
                      padding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hand-carried ([pcs)',
                              style: AppSizes.accountText(context)),
                          Text(
                            '1',
                            style: AppSizes.bolds(context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.sizeBox,),

                    Text(
                      'First time visiting Bangladesh?',
                      style: AppSizes.bolds(context),
                    ),
                    YesNoRadioGroup(),
                    ElevatedButton(
                        onPressed: () {
                          AppRoutes.push(context, page: SignatureScreen());
                        },
                        child: Text(
                          'Next',
                          style: AppSizes.normalTextBold(context),
                        )),
                    SizedBox(
                      height: AppSizes.sizeBox,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(AppSizes.normalPadding),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSizes.paddingBody,
                        ),
                      ),
                      onPressed: () {
                        AppRoutes.pop(context);
                      },
                      child: Text(
                        'Previous',
                        style: AppSizes.normalTexButton(context),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
