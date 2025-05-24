import 'package:flutter/material.dart';

import '../../../../core/constant/size.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Travel Document',style: AppSizes.accountText(context),),
              Text('Foreign Passport Holder',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('First Name',style: AppSizes.accountText(context),),
              Text('MD.ZAYED',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Last Name',style: AppSizes.accountText(context),),
              Text('OSYHIK',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Passport Number',style: AppSizes.accountText(context),),
              Text('A012547895',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Passport Issued Date',style: AppSizes.accountText(context),),
              Text('August 23, 2022',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Birth Date',style: AppSizes.accountText(context),),
              Text('July 36, 2002',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Citizenship',style: AppSizes.accountText(context),),
              Text('bangladesh',style: AppSizes.xsmallLight(context),),
            ],
          ),
        ),
        SizedBox(
          width: AppSizes.sizeBoxW,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email address',style: AppSizes.accountText(context),),
              Text('ZAYED.M360ICT@gmail.com',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Middle Name',style: AppSizes.accountText(context),),
              Text('N/A',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Suffix',style: AppSizes.accountText(context),),
              Text('N/A',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Passport Issuing Authority',style: AppSizes.accountText(context),),
              Text('Bangladesh',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Sex',style: AppSizes.accountText(context),),
              Text('MALE',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Country',style: AppSizes.accountText(context),),
              Text('Bangladesh',style: AppSizes.xsmallLight(context),),
              SizedBox(
                height: AppSizes.sizeBoxW,
              ),
              Text('Mobile Number',style: AppSizes.accountText(context),),
              Text('01658794235',style: AppSizes.xsmallLight(context),),
            ],
          ),
        )
      ],
    );
  }
}