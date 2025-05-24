import 'package:egov_bd/features/travel/presentation/pages/personal_information_summary.dart';
import 'package:egov_bd/features/travel/presentation/widgets/header_section.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_route/app_route.dart';
import '../../../../core/constant/size.dart';
import '../widgets/customs_header_section.dart';

class SignatureScreen extends StatefulWidget {
  const SignatureScreen({super.key});

  @override
  State<SignatureScreen> createState() => _SignatureScreenState();
}

class _SignatureScreenState extends State<SignatureScreen> {
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
              padding: const EdgeInsets.all(AppSizes.paddingBody),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomsHeaderSection(),
                  Center(
                    child: Text(
                      'Customs Declaration attachment and signature',
                      style: AppSizes.accountText(context),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.sizeBoxW,
                  ),
                  Text(
                    'For Custom-Declaration Signature',
                    style: AppSizes.lbigBold(context),
                  ),
                  SizedBox(
                    height: AppSizes.sizeBoxW,
                  ),
                  Text('Signature'),
                  SizedBox(
                    height: AppSizes.sizeBox,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppSizes.normalPadding),
                      border: Border.all(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.normalPadding),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          AppSizes.normalPadding),
                                    ),
                                    backgroundColor: AppColors.gray),
                                child: Text(
                                  'Clear',
                                  style: AppSizes.locationName(context),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.sizeBoxW,
                  ),
                  Text(
                      'By Clicking "Next", you hereby certify under pain of falsification that this declaration is true and correct to the best of my Knowledge'),



                  SizedBox(
                    height: AppSizes.sizeBoxW,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        AppRoutes.push(context, page: PersonalInformationSummary());
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
    );
  }
}
