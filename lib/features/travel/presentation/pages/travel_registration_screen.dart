import 'package:egov_bd/core/constant/app_route/app_route.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/travel/presentation/pages/new_travel_declaration.dart';
import 'package:egov_bd/features/travel/presentation/widgets/header_section.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../core/constant/app_colors.dart';

class TravelRegistrationScreen extends StatefulWidget {
  const TravelRegistrationScreen({super.key});

  @override
  State<TravelRegistrationScreen> createState() => _TravelRegistrationScreenState();
}

class _TravelRegistrationScreenState extends State<TravelRegistrationScreen> {
  String selectedOption = 'air';
  String selectedOptions = 'for me';
  bool specialFlight = false;
  bool arrival = false;
  bool departure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text('Travel'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(AppSizes.paddingBody),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              SizedBox(
                height: AppSizes.sizeBox,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.paddingInside),
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
                              color: AppColors.leadingTColor // optional styling
                              ),
                        ],
                      ),
                      SizedBox(width: AppSizes.sizeBox),

                      // Text Section
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Announcement',
                                style: AppSizes.bolds(context)),
                            SizedBox(height: AppSizes.sizeBox),
                            Text(
                              'You may only register within 72 hours prior to your arrival or departure in Bangladesh. Travelers are enjoined to present their eTravel QR to flight boarding.',
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
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text(
                'Travel Registration',
                style: AppSizes.lbigBold(context),
              ),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedOptions = 'for me';
                        });
                      },
                      child: Container(

                        height: 60,
                        decoration: BoxDecoration(
                          color: selectedOptions == 'for me' ? AppColors.leadingTColor :AppColors.backgroundColor,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft:
                                  Radius.circular(AppSizes.normalPadding)),
                        ),
                        // padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FORE ME\n(Current User)', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: selectedOptions == 'for me' ? AppColors.backgroundColor : Colors.black,
                                ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(

                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedOptions = 'other';
                        });
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: selectedOptions == 'other' ? AppColors.leadingTColor :AppColors.backgroundColor,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(AppSizes.normalPadding),
                            topRight: Radius.circular(AppSizes.normalPadding),
                          ),
                        ),
                        // padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FOR OTHER\n(Family Member)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: selectedOptions == 'other' ? AppColors.backgroundColor : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = 'air';
                        });
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: selectedOption == 'air' ? AppColors.leadingTColor :AppColors.backgroundColor,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.normalPadding),
                            bottomLeft: Radius.circular(AppSizes.normalPadding),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'AIR',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedOption == 'air' ? AppColors.backgroundColor : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = 'sea';
                        });
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: selectedOption == 'sea' ? AppColors.leadingTColor :AppColors.backgroundColor,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppSizes.normalPadding),
                            bottomRight: Radius.circular(AppSizes.normalPadding),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'SEA',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedOption == 'sea' ? AppColors.backgroundColor : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              // TravelForm(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            BorderRadius.circular(AppSizes.normalPadding),
                      ),
                      // padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: arrival,
                                onChanged: (value) {
                                  setState(() => arrival = value!);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ARRIVAL\nEntering the Bangladesh',
                                style: TextStyle(fontSize: 14),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppSizes.sizeBox,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            BorderRadius.circular(AppSizes.normalPadding),
                      ),
                      // padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: departure,
                                onChanged: (value) {
                                  setState(() => departure = value!);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'DEPARTURE \nLeaving the Bangladesh',
                                style: TextStyle(fontSize: 14),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppSizes.sizeBox,
              ),
              CheckboxListTile(
                value: specialFlight,
                onChanged: (value) => setState(() => specialFlight = value!),
                title: Text("Special Flight"),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(
                height: AppSizes.sizeBox,
              ),
              RichText(
                text: TextSpan(
                  style: AppSizes.smallText(context),
                  children: [
                    TextSpan(
                      text: 'By clicking "Continue", you agree to our ',
                    ),
                    TextSpan(
                        text: 'Data Privacy and Affidavit of Undertaking',
                        style: AppSizes.normalBolds(context)),
                  ],
                ),
              ),
              SizedBox(
                height: AppSizes.sizeBox,
              ),
              ElevatedButton(
                  onPressed: () {
                    AppRoutes.push(context, page: NewTravelDeclaration());
                  },
                  child: Text(
                    'Continue',
                    style: AppSizes.normalTextBold(context),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
