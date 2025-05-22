import 'package:egov_bd/core/constant/app_route/app_route.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/tourism/presentation/data/controller/json_data.dart';
import 'package:egov_bd/features/tourism/presentation/data/model/tourist_data_model.dart';
import 'package:egov_bd/features/tourism/presentation/pages/tourism_details_screen.dart';
import 'package:flutter/material.dart';

// class TouristGridPage extends StatefulWidget {
//   const TouristGridPage({super.key});
//
//   @override
//   State<TouristGridPage> createState() => _TouristGridPageState();
// }
//
// class _TouristGridPageState extends State<TouristGridPage> {
//    Future<List<TouristSpot>>? futureData;
//
//   @override
//   void initState() {
//     super.initState();
//     futureData = loadTouristData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return FutureBuilder<List<TouristSpot>>(
//       // future: loadTouristData(),
//       future: futureData,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError) {
//           return Center(child: Text("Error: ${snapshot.error}"));
//         }
//
//         final spots = snapshot.data!;
//         return GridView.builder(
//           physics: NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           padding: EdgeInsets.all(AppSizes.normalPadding),
//           itemCount: spots.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 12,
//             mainAxisSpacing: 12,
//             childAspectRatio: 0.9,
//           ),
//           itemBuilder: (context, index) {
//
//             final spot = spots[index];
//             return InkWell(
//               onTap: (){
//                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>TourismDetailsScreen()));
//                 AppRoutes.push(context, page: TourismDetailsScreen(spot: spot ,));
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(AppSizes.normalPadding),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 6,
//                       offset: Offset(0, 3),
//                     )
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Expanded(
//                       child: ClipRRect(
//                         borderRadius:
//                             BorderRadius.vertical(top: Radius.circular(AppSizes.normalPadding)),
//                         child: Image.network(
//                           spot.images??"",
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(AppSizes.normalPadding),
//                       child: Text(
//                         spot.name??"",
//                         textAlign: TextAlign.start,
//                         style:
//                             AppSizes.bolds(context),
//                       ),
//                     ),
//                     // Padding(
//                     //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                     //   child: Text(
//                     //     spot.location,
//                     //     textAlign: TextAlign.center,
//                     //     style: AppSizes.normalSize(context)
//                     //   ),
//                     // )
//                   ]
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }


class TouristGridPage extends StatefulWidget {
  const TouristGridPage({super.key});

  @override
  State<TouristGridPage> createState() => _TouristGridPageState();
}

class _TouristGridPageState extends State<TouristGridPage> {
  Future<List<TouristSpot>>? futureData;

  @override
  void initState() {
    super.initState();
    futureData = loadTouristData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TouristSpot>>(
      future: futureData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        }

        final spots = snapshot.data ?? [];

        if (spots.isEmpty) {
          return const Center(child: Text("No tourist spots found."));
        }

        return SizedBox(
          height: 500,
          child: GridView.builder(
            padding: EdgeInsets.all(AppSizes.normalPadding),
            itemCount: spots.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              final spot = spots[index];
              return InkWell(
                onTap: () {
                  AppRoutes.push(context, page: TourismDetailsScreen(spot: spot));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppSizes.normalPadding),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(AppSizes.normalPadding)),
                          child: Image.network(
                            spot.images ?? "",
                            fit: BoxFit.cover,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return const Center(child: CircularProgressIndicator());
                            },
                            errorBuilder: (context, error, stackTrace) {
                              return const Center(
                                child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.normalPadding),
                        child: Text(
                          spot.name ?? "No Name",
                          textAlign: TextAlign.start,
                          style: AppSizes.bolds(context),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

