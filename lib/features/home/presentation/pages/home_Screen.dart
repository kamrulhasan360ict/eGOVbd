import 'package:carousel_slider/carousel_slider.dart';
import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../widgets/card_widgets.dart';
import '../widgets/carousel_slider.dart';
import '../widgets/catagori_list.dart';
import '../widgets/profile_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final icons = [
    HugeIcons.strokeRoundedBuilding02,
    HugeIcons.strokeRoundedPlaza,
    HugeIcons.strokeRoundedJobLink,
    HugeIcons.strokeRoundedSelfTransfer,
  ];
  final secendicons = [
    HugeIcons.strokeRoundedAirplane01,
    HugeIcons.strokeRoundedAircraftGame,
    HugeIcons.strokeRoundedHealtcare,
    HugeIcons.strokeRoundedMoreHorizontalCircle01,
  ];

  final labels = ['NGAs', 'LGUs', 'Jobs', 'Tourism'];
  final secendLabels = ['Travel', 'Start-Up', 'Health', 'More'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(AppSizes.paddingBody),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileSection(),
                  SizedBox(
                    height: AppSizes.lsizeBox16,
                  ),
                  CatagoriList(
                      icons: icons,
                      labels: labels,
                      secendicons: secendicons,
                      secendLabels: secendLabels),
                  SizedBox(
                    height: AppSizes.lsizeBox16,
                  ),

                  HomeCarouselSlider(),
                  SizedBox(
                    height: AppSizes.lsizeBox16,
                  ),
                  Text(
                    'Featured eGovBD Services',
                    style: AppSizes.xsmallLight(context),
                  ),

                  SizedBox(
                    height: AppSizes.lsizeBox16,
                  ),
                  HomeCarouselSlider(),
                  SizedBox(
                    height: AppSizes.lsizeBox16,
                  ),
                  // Expanded(
                  //   child: Container(
                  //     padding: EdgeInsets.all(8),
                  //     child: Row(
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         Icon(Icons.help_outline, color: Colors.blue),
                  //         SizedBox(width: 8),
                  //         Text(
                  //           'Need help',
                  //           style: AppSizes.lbigBold(context),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  CardWidgets(),
                ],
              ),
            )),
      ),
    );
  }
}
