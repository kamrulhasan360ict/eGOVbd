import 'package:egov_bd/features/travel/presentation/widgets/header_section.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/size.dart';

class PersonalInformationSummary extends StatefulWidget {
  const PersonalInformationSummary({super.key});

  @override
  State<PersonalInformationSummary> createState() => _PersonalInformationSummaryState();
}

class _PersonalInformationSummaryState extends State<PersonalInformationSummary> {
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
          ],

        ),
      ),
    );
  }
}
