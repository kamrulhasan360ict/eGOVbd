import 'package:egov_bd/features/mobile_id/presentation/pages/passport_update.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_route/app_route.dart';
import '../../../../core/constant/size.dart';

class PassportInformation extends StatefulWidget {
  const PassportInformation({super.key});

  @override
  State<PassportInformation> createState() => _PassportInformationState();
}

class _PassportInformationState extends State<PassportInformation> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController passportNumberController =
      TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController issueDateController = TextEditingController();

  final TextEditingController issueStateController = TextEditingController();

  @override
  void dispose() {
    passportNumberController.dispose();
    expiryDateController.dispose();

    issueDateController.dispose();
    issueStateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.paddingBody),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: AppSizes.lsizeBox40,
                          ),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: AppColors.seed,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: HugeIcon(
                                icon: HugeIcons.strokeRoundedInformationCircle,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppSizes.lsizeBox16,
                          ),
                          Text(
                            "Passport Information",
                            style: AppSizes.bolds(context),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: AppSizes.sizeBoxW,
                          ),
                          Text(
                            "Is your passport up to date?",
                            style: AppSizes.hinTextColor(context),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppSizes.lsizeBox16,
                  ),
                  TextFormField(
                    controller: passportNumberController,
                    decoration: InputDecoration(
                      labelText: 'Passport Number',
                      labelStyle: AppSizes.lavelText(context),
                    ),
                    // validator: (value) => value!.isEmpty ? 'Required' : null,
                  ),
                  SizedBox(
                    height: AppSizes.sizeBox,
                  ),
                  TextFormField(
                    controller: expiryDateController,
                    decoration: InputDecoration(
                      // hintText: 'Date of Expiry (mm/dd/yyyy)',
                      //   hintStyle: AppSizes.hinTextColor(context),
                      labelText: 'Date of Expiry (mm/dd/yyyy)',
                      labelStyle: AppSizes.lavelText(context),
                    ),

                    // validator: (value) => value!.isEmpty ? 'Required' : null,
                  ),
                  SizedBox(
                    height: AppSizes.sizeBox,
                  ),
                  TextFormField(
                    controller: issueDateController,
                    decoration: InputDecoration(
                      labelText: 'Issued Date (mm/dd/yyyy)',
                      labelStyle: AppSizes.lavelText(context),
                    ),

                    // validator: (value) => value!.isEmpty ? 'Required' : null,
                  ),
                  SizedBox(
                    height: AppSizes.sizeBox,
                  ),
                  TextFormField(
                    controller: issueDateController,
                    decoration: InputDecoration(
                      labelText: 'Issued State',
                      labelStyle: AppSizes.lavelText(context),
                    ),
                    // validator: (value) => value!.isEmpty ? 'Required' : null,
                  ),
                  SizedBox(height: AppSizes.lsizeBox40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            AppRoutes.push(context, page: PassportUpdate());
                          },
                          child: Text(
                            'Update Passport',
                            style: AppSizes.normalTexButton(context),
                          ),
                        ),
                      ),
                      SizedBox(width: AppSizes.sizeBox),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.seed,
                          ),
                          onPressed: () {
                            // if (_formKey.currentState!.validate()) {
                            //   Navigator.of(context).pop();
                            // }
                          },
                          child: Text(
                            "Yes",
                            style: AppSizes.normalTextBold(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
