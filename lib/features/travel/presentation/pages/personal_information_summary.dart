import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/app_route/app_route.dart';
import '../../../../core/constant/size.dart';
import '../widgets/personal_information.dart';

class PersonalInformationSummary extends StatefulWidget {
  const PersonalInformationSummary({super.key});

  @override
  State<PersonalInformationSummary> createState() =>
      _PersonalInformationSummaryState();
}

class _PersonalInformationSummaryState
    extends State<PersonalInformationSummary> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      'New Travel Declaration Summary',
                      style: AppSizes.vbigBold(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBox,
                    ),
                    Text(
                      'Kindly double check the information before submitting',
                      style: AppSizes.hinTextColor(context),
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
                    Text(
                      'Country',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'Bangladesh',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'No./Bidg./City/State/Province',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'Mirpur, Dhaka 1230',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Address Line 2',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'N/A ',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text('Travel Details - Bangladesh Arrival (via AIR)', style: AppSizes.vbigBold(context),),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Purpose of Travel',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'Holiday/Pleasure/Leisure',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Traveller Type',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'AirCraft Passenger',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Destination upon arrival in Bangladesh',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'HOTEL',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Hotel/Resort ',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'Mirpur, Dhaka',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Accompanied family members',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'Below 18 yrs. old:0 \n18 yrs. old and above: 0',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'First time visiting Bangladesh',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'YES',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Your last departure date from the Bangladesh',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'N/A',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                        'No. of baggage:',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'Checked-in (pcs) (Pcs):0\nHand-carried (pcs) (Pcs):1',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text('Flight Information)', style: AppSizes.vbigBold(context),),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'name of Airline',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'AirAsia',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Flight Number',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'AK 123',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text('origin', style: AppSizes.vbigBold(context),),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Country of Origin',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'Bangladesh',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Airport of Origin',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'DAC',
                      style: AppSizes.xsmallLight(context),
                    ), SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Date of Departure',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'May 01, 2025',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Date of Return',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'May 10, 2025',
                      style: AppSizes.xsmallLight(context),
                    ),

                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text('health Declaration', style: AppSizes.vbigBold(context),),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text('Country(ies) worked,visited and transited in the last 30days',style: AppSizes.xsmallLight(context),),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Country ',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'N/A',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'have you had any history of exposure to a person who is sick or know to have communicable/infection disorder in the last 30 days?',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'NO',
                      style: AppSizes.xsmallLight(context),
                    ), SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'have you been sick in the past 30 days?',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'NO',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Symptoms',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'N/A',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text('For Customs-general Declaration', style: AppSizes.vbigBold(context),),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Total Amount of goods in your possession and/or acquired abroad?',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'Currency: N/A\nAmount: 0',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Bangladesh Currency and/or any Bangladesh Monetary Instruments in excess of BDT 50,000.00;(i e cash, bank drafts,etc.)',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'NO',
                      style: AppSizes.xsmallLight(context),
                    ), SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Foreign Currency and/or any Foreign Monetary Instruments in excess of+ USD 10,000.00 or it equivalent;',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'NO',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'gambling Paraphernalia',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'No',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'cosmetics,skin care products,food supplements and medicines in excess of quantity for personal use;',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'NO',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Dangerous Drugs such as marijuana, opium, poppies or synthesized drugs;',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'No',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Firearms, ammunition, explosives and other weapons;',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'No',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Foodstuffs, fruits ,vegetables,live animals,(Le,meat,fish,eggs,dairy products, etc),marline and aquatic products,plants and plant products and their by-products;',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'NO',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Mobile phones,hand-held radios and similar gadgets in excess of quantities for personal use,and radio communication ',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'No',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Cremains(human ashes),human organs and tissues;',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'No',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Jewelry, gold, precious metals r gems',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'NO',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text(
                      'Other goods, not mentioned above;',
                      style: AppSizes.accountText(context),
                    ),
                    Text(
                      'No',
                      style: AppSizes.xsmallLight(context),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    Text('Declaration Signature',style: AppSizes.vbigBold(context),),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
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

                      ),
                    ),
                    SizedBox(
                      height: AppSizes.sizeBoxW,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // AppRoutes.push(context, page: TravelRegistrationScreen());
                      },
                      child: Text(
                        'Submit',
                        style: AppSizes.normalTextBold(context),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}


