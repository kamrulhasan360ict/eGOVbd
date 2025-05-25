// import 'package:egov_bd/core/constant/app_colors.dart';
// import 'package:egov_bd/core/constant/app_text.dart';
// import 'package:egov_bd/core/constant/size.dart';
// import 'package:egov_bd/features/travel/presentation/widgets/header_section.dart';
// import 'package:flutter/material.dart';
//
// import '../widgets/country_origin_dropdown.dart';
// import '../widgets/flight_information_dropdown.dart';
// import '../widgets/travel_type_dropdown.dart';
//
// class NewTravelDeclaration extends StatefulWidget {
//   const NewTravelDeclaration({super.key});
//
//   @override
//   State<NewTravelDeclaration> createState() => _NewTravelDeclarationState();
// }
//
// class _NewTravelDeclarationState extends State<NewTravelDeclaration> {
//   String selectedPurpose = 'Holiday';
//
//   final List<String> travelPurposes = [
//     'Holiday',
//     'Pleasure',
//     'Vacation',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.backgroundColor,
//         title: Text('Travel'),
//         centerTitle: true,
//         actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               HeaderSection(),
//               SizedBox(
//                 height: AppSizes.sizeBoxW,
//               ),
//               Stack(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height,
//                   ),
//                   // Background container
//                   Container(
//                     height: MediaQuery.of(context).size.height / 3,
//                     width: double.infinity,
//                     color: AppColors.leadingTColor,
//                     child: Text(
//                       'Bangladesh Travel Information System ',
//                       style: AppSizes.stackText(context),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//
//                   // Foreground positioned container
//                   Positioned(
//                     top: 60, // slight overlap
//                     left: 0,
//                     right: 0,
//                     child: Container(
//                       padding: EdgeInsets.all(AppSizes.paddingBody),
//
//                       // height: 600,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(20),
//                           topRight: Radius.circular(20),
//                         ),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "New Travel Declaration",
//                             style: AppSizes.vbigBold(context),
//                           ),
//                           Text(
//                             "Fill up your Travel information, let\'s get started",
//                             style: AppSizes.accountText(context),
//                           ),
//                           SizedBox(
//                             height: AppSizes.lsizeBox16,
//                           ),
//                           Text(
//                             'Travel Details-Bangladesh Arrival (via AIR)',
//                             style: AppSizes.bolds(context),
//                           ),
//                           Text(
//                             "New Travel Declaration",
//                             style: AppSizes.vbigBold(context),
//                           ),
//                           SizedBox(
//                             height: AppSizes.sizeBoxW,
//                           ),
//                           TravelTypeDropdown(),
//                           SizedBox(
//                             height: AppSizes.sizeBoxW,
//                           ),
//                           Text(
//                             'Flight Information',
//                             style: AppSizes.bolds(context),
//                           ),
//                           SizedBox(
//                             height: AppSizes.sizeBoxW,
//                           ),
//                           FlightInformationDropdown(),
//                           Text(
//                             AppText.travelNotice
//                               ),
//                           SizedBox(
//                             height: AppSizes.sizeBoxW,
//                           ),
//                           Text(
//                             'Origin',
//                             style: AppSizes.normalBolds(context),
//                           ),
//                           SizedBox(height: AppSizes.sizeBox),
//                           CountryOriginDropdown(),
//                           SizedBox(height: AppSizes.sizeBox),
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey), // Proper visible border
//                               borderRadius: BorderRadius.circular(AppSizes.normalPadding),
//                             ),
//                             padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('hello', style: TextStyle(fontSize: 14)),
//                                 SizedBox(height: 4),
//                                 Text('hello', style: TextStyle(fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                           ),
//
//                           Text('awrgar'),   Text('awrgar'),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:egov_bd/core/constant/app_route/app_route.dart';
import 'package:egov_bd/features/travel/presentation/pages/health_declaration_screen.dart';
import 'package:flutter/material.dart';
import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/app_text.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/travel/presentation/widgets/header_section.dart';
import '../../../home/presentation/pages/home_Screen.dart';
import '../widgets/country_origin_dropdown.dart';
import '../widgets/flight_information_dropdown.dart';
import '../widgets/travel_type_dropdown.dart';
import '../widgets/travel_type_selector.dart';

class NewTravelDeclaration extends StatefulWidget {
  const NewTravelDeclaration({super.key});

  @override
  State<NewTravelDeclaration> createState() => _NewTravelDeclarationState();
}

class _NewTravelDeclarationState extends State<NewTravelDeclaration> {
  bool specialFlight = false;
  String selectedPurpose = 'Holiday';

  final List<String> travelPurposes = [
    'Holiday',
    'Pleasure',
    'Vacation',
  ];

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
            children: [
              HeaderSection(),
              SizedBox(height: AppSizes.sizeBoxW),

              // Top Banner
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

              // Main Form Section
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.paddingBody),
                  topRight: Radius.circular(AppSizes.paddingBody),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(AppSizes.paddingBody),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.paddingBody),
                      topRight: Radius.circular(AppSizes.paddingBody),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: AppSizes.sizeBoxW),
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
                        'Travel Details - Bangladesh Arrival (via AIR)',
                        style: AppSizes.bolds(context),
                      ),
                      SizedBox(height: AppSizes.sizeBoxW),

                      TravelTypeDropdown(),
                      SizedBox(height: AppSizes.sizeBoxW),

                      Text(
                        'Flight Information',
                        style: AppSizes.bolds(context),
                      ),
                      SizedBox(height: AppSizes.sizeBoxW),

                      FlightInformationDropdown(),
                      SizedBox(height: AppSizes.sizeBoxW),

                      Text(AppText.travelNotice),
                      SizedBox(height: AppSizes.sizeBoxW),

                      Text(
                        'Origin',
                        style: AppSizes.normalBolds(context),
                      ),
                      SizedBox(height: AppSizes.sizeBox),

                      CountryOriginDropdown(),

                      // Example Container
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.paddingInside),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(AppSizes.normalPadding),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Airport Origin',
                                  style: AppSizes.accountText(context)),
                              Text(
                                'DAC',
                                style: AppSizes.bolds(context),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: AppSizes.sizeBoxW),
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.paddingInside),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(AppSizes.normalPadding),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // align texts left
                                children: [
                                  Text('Date of departure',
                                      style: AppSizes.accountText(context)),
                                  SizedBox(height: 4), // small spacing
                                  Text('05/10/2025',
                                      style: AppSizes.bolds(context)),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.clear),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.date_range_outlined),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: AppSizes.sizeBoxW),
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.paddingInside),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(AppSizes.normalPadding),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // align texts left
                                children: [
                                  Text('Date of return',
                                      style: AppSizes.accountText(context)),
                                  SizedBox(height: 4), // small spacing
                                  Text('05/10/2025',
                                      style: AppSizes.bolds(context)),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.clear),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.date_range_outlined),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      CheckboxListTile(
                        value: specialFlight,
                        onChanged: (value) =>
                            setState(() => specialFlight = value!),
                        title: Text(
                          "With Transit (Connecting Flight)?",
                          style: AppSizes.redTexBold(context),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      SizedBox(
                        height: AppSizes.sizeBoxW,
                      ),
                      Text(
                        'Destination',
                        style: AppSizes.normalBolds(context),
                      ),
                      SizedBox(
                        height: AppSizes.sizeBoxW,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.paddingInside),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(AppSizes.normalPadding),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Airport of Destination',
                                  style: AppSizes.accountText(context)),
                              Text(
                                'Dhaka International Airport',
                                style: AppSizes.bolds(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppSizes.sizeBoxW,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.paddingInside),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(AppSizes.normalPadding),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // align texts left
                                children: [
                                  Text('Date of Arrival',
                                      style: AppSizes.accountText(context)),
                                  SizedBox(height: 4), // small spacing
                                  Text('05/10/2025',
                                      style: AppSizes.bolds(context)),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.clear),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.date_range_outlined),
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

                      Text('Destination upon arrival in the Bangladesh'),
                      TravelTypeSelector(),
                      SizedBox(
                        height: AppSizes.sizeBoxW,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.paddingInside),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(AppSizes.normalPadding),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hotel,Resort,Airbnb,Tourist Destination',
                                  style: AppSizes.accountText(context)),
                              Text(
                                'Dhaka International Airport',
                                style: AppSizes.bolds(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppSizes.sizeBoxW,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            AppRoutes.push(context, page: HealthDeclarationScreen());
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
                          'Cancel',
                          style: AppSizes.normalTexButton(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
