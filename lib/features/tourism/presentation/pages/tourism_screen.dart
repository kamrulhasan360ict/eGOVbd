import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/tourism/presentation/pages/tourism_details_screen.dart';
import 'package:egov_bd/features/tourism/presentation/widgets/tourist_list_spot.dart';
import 'package:flutter/material.dart';

import '../widgets/category_list.dart';
import '../widgets/search_bar.dart';

class TourismScreen extends StatefulWidget {
  const TourismScreen({super.key});

  @override
  State<TourismScreen> createState() => _TourismScreenState();
}

class _TourismScreenState extends State<TourismScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Tourism'),
          centerTitle: true,

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingBody),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [],
                ),
                Text(
                  'Tourism',
                  style: AppSizes.lbigBold(context),
                ),
                SizedBox(
                  height: AppSizes.sizeBox,
                ),
                Text('Explore by interest'),
                SizedBox(
                  height: AppSizes.lsizeBox16,
                ),
                TourismSearchBar(),
                SizedBox(
                  height: AppSizes.lsizeBox16,
                ),
                CategoryList(),
                // GridView.builder(
                //   physics: NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   padding: EdgeInsets.all(AppSizes.normalPadding),
                //   itemCount: 10,
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     crossAxisSpacing: 12,
                //     mainAxisSpacing: 12,
                //     childAspectRatio: 1,
                //   ),
                //   itemBuilder: (context, index) {
                //     return InkWell(
                //       onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>TourismDetailsScreen()));
                //         // print("Tapped on item ${index + 1}");
                //         // Navigate or do something specific here
                //       },
                //       child: Container(
                //         decoration: BoxDecoration(
                //           color: Colors.white,
                //           borderRadius: BorderRadius.circular(AppSizes.normalPadding),
                //           boxShadow: [
                //             BoxShadow(
                //               color: Colors.black12,
                //               blurRadius: 6,
                //               offset: Offset(0, 3),
                //             )
                //           ],
                //         ),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.stretch,
                //           children: [
                //             Expanded(
                //               child: ClipRRect(
                //                 borderRadius:
                //                 BorderRadius.vertical(top: Radius.circular(12)),
                //                 child: Image.asset(
                //                   'assets/images/seaview.jpg',
                //                   fit: BoxFit.cover,
                //                 ),
                //               ),
                //             ),
                //             Padding(
                //               padding: const EdgeInsets.all(AppSizes.normalPadding),
                //               child: Text(
                //                 'Category ${index + 1}',
                //                 textAlign: TextAlign.start,
                //                 style: AppSizes.bolds(context),
                //
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     );
                //   },
                // )

                TouristGridPage(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

