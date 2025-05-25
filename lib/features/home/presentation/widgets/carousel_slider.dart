import 'package:carousel_slider/carousel_slider.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({super.key});

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {
  int _currentIndex = 0;

  final List<String> imageList = [
    "assets/images/travel information.jpg",
    "assets/images/travel_information1.jpg",
    "assets/images/travel_information2.jpg",

  ]; // List of items for the carousel

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCarouselSlider(),
        SizedBox(height: AppSizes.sizeBox),
        // Indicator dots
        // _indicatorDots(),
      ],
    );
  }

  // CarouselSlider _buildCarouselSlider() {
  //   return CarouselSlider(
  //     options: CarouselOptions(
  //       height: 150,
  //
  //       viewportFraction: 0.76,
  //       padEnds: false,
  //       // autoPlay: true,
  //       onPageChanged: (index, reason) {
  //         setState(
  //               () {
  //             _currentIndex = index;
  //           },
  //         );
  //       },
  //     ),
  //     items: imageList.map(
  //           (imagePath) {
  //         return
  //           Card(
  //             shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(AppSizes.paddingInside),
  //             ),
  //             color: AppColors.cardBColor,
  //             elevation: 1,
  //             margin: EdgeInsets.all(2),
  //             child: Padding(
  //               padding: const EdgeInsets.all(AppSizes.paddingBody),
  //               child: Row(
  //                 children: [
  //                   Expanded(
  //                     child: Image.asset(
  //                       'assets/images/contract.png',
  //                       height: 120,
  //                       fit: BoxFit.cover,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           );
  //
  //
  //         //   Builder(
  //         //   builder: (BuildContext context) {
  //         //     return Container(
  //         //         width: MediaQuery.of(context).size.width,
  //         //         margin: EdgeInsets.symmetric(horizontal: 2.0),
  //         //         decoration: BoxDecoration(
  //         //           borderRadius: BorderRadius.circular(8),
  //         //           color: AppColors.slider,
  //         //         ),
  //         //         alignment: Alignment.center,
  //         //         child: Padding(
  //         //           padding: const EdgeInsets.all(AppSizes.normalPadding),
  //         //           child: Row(
  //         //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         //             children: [
  //         //               Expanded(
  //         //                 child: Column(
  //         //                   crossAxisAlignment: CrossAxisAlignment.start,
  //         //                   children: [
  //         //                     Text(
  //         //                       'eTravel',
  //         //                       style: AppSizes.bolds(context),
  //         //                     ),
  //         //                     Text(
  //         //                       '\nBangladesh travel \nInformation System',
  //         //                       style: AppSizes.xsmallLight(context),
  //         //                     )
  //         //                   ],
  //         //                 ),
  //         //               ),
  //         //               SizedBox(width: 8), // Optional spacing
  //         //               Image.asset(
  //         //                 'assets/images/image.png',
  //         //                 width: 100, // Reduced from 140 to avoid overflow
  //         //               ),
  //         //             ],
  //         //           ),
  //         //
  //         //           // child: Text(
  //         //           //   'text $i',
  //         //           //   style: TextStyle(fontSize: 16.0, color: Colors.white),
  //         //           // ),
  //         //
  //         //         ));
  //         //   },
  //         // );
  //       },
  //     ).toList(),
  //   );
  // }

  CarouselSlider _buildCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        viewportFraction: 0.76,
        padEnds: false,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      items: imageList.map((imagePath) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.paddingInside),
          ),
          color: AppColors.cardBColor,
          elevation: 1,
          margin: const EdgeInsets.only(right: 12), // প্রতিটি কার্ডের মাঝে gap
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.paddingBody),
            child: Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imagePath, // এখানে dynamic imagePath
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

}
