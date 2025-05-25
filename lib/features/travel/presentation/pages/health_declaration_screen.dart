import 'package:egov_bd/features/travel/presentation/pages/custom_declaration_screen.dart';
import 'package:egov_bd/features/travel/presentation/widgets/header_section.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_route/app_route.dart';
import '../../../../core/constant/size.dart';
import '../../../home/presentation/pages/home_Screen.dart';
import '../widgets/custom_radio_button.dart';

class HealthDeclarationScreen extends StatefulWidget {
  const HealthDeclarationScreen({super.key});

  @override
  State<HealthDeclarationScreen> createState() => _HealthDeclarationScreenState();
}

class _HealthDeclarationScreenState extends State<HealthDeclarationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text('Travel'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){ AppRoutes.pushAndRemoveUntil(context, page: HomeScreen());}, icon: Icon(Icons.home))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(AppSizes.normalPadding),
                color: AppColors.seed,
                child: Text(
                  'Bangladesh Travel Information System',
                  style: AppSizes.stackText(context),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppSizes.paddingBody),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Travel Declaration",
                      style: AppSizes.vbigBold(context),
                    ),
                    Text(
                      "Fill up your Travel information, let\'s get started",
                      style: AppSizes.accountText(context),
                    ),
                    SizedBox(height: AppSizes.lsizeBox16),
                    Text(
                      'Health Declaration',
                      style: AppSizes.bolds(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBox,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(AppSizes.paddingInside),
                      ),
                      color: AppColors.cardBColor,
                      elevation: 1,
                      margin: EdgeInsets.all(2),
                      child: Padding(
                        padding: const EdgeInsets.all(AppSizes.paddingBody),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Icon Section
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(HugeIcons.strokeRoundedAlert02,
                                    size: 32,
                                    color:
                                        AppColors.TRedColor // optional styling
                                    ),
                              ],
                            ),
                            SizedBox(width: AppSizes.sizeBoxW),

                            // Text Section
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'As of july 22,2023,No Covid-19 test or vaccination requirement when travel to Bangladesh',
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppSizes.smallText(context),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: AppSizes.sizeBoxW),
                    Text(
                        'Country(ies) worked, visited and transited in the last 30 day (optional)'),
                    SizedBox(height: AppSizes.sizeBoxW),
                    Container(
                      height: 60,
                      width: 70,
                      decoration: BoxDecoration(
                          color: AppColors.seed,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(
                              AppSizes.normalPadding) // optional border
                          ),
                      alignment: Alignment.center,
                      child: Text('Add', style: AppSizes.stackText(context)),
                    ),
                    SizedBox(height: AppSizes.sizeBoxW),
                    Text(
                        'have you had any history of exposure to e person who is sick or know to have '),
                    Text(
                        'Communicable/infection disease in the past 30 days prior to travel?'),
                    SizedBox(height: AppSizes.sizeBoxW),
                    YesNoRadioGroup(),
                    SizedBox(height: AppSizes.sizeBoxW),
                    Text('have you been sick in the past 30 days?'),
                    YesNoRadioGroup(),
                    SizedBox(height: AppSizes.sizeBoxW),
                    ElevatedButton(
                        onPressed: () {
                          AppRoutes.push(context, page: CustomDeclarationScreen());
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
                      onPressed: () {},
                      child: Text(
                        'Previous',
                        style: AppSizes.normalTexButton(context),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
