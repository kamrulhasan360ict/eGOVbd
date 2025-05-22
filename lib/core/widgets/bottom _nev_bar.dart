// import 'package:flutter/material.dart';
// import 'package:hugeicons/hugeicons.dart';
//
// import '../../features/home/presentation/pages/home_Screen.dart';
// import '../../features/mobile_id/presentation/pages/passport_information.dart';
// import '../constant/app_colors.dart';
//
//
// class MainBottomNavScreen extends StatelessWidget {
//   MainBottomNavScreen({super.key});
//
//   // static const String name = '/main_bottom_nav_screen';
//
//   final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);
//
//   final List<Widget> screens = const [
//     // Center(child: Text("🏠 Home")),
//     HomeScreen(),
//     Center(child: Text("🛒 News")),
//     // ShopingScreen(),
//     // Center(child: Text("❤️ Mobile ID")),
//     _showPassportFormDialog(),
//     Center(child: Text("❤️ Scan QR")),
//     Center(child: Text("📂 Account")),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ValueListenableBuilder<int>(
//         valueListenable: currentIndex,
//         builder: (context, index, _) {
//           return screens[index];
//         },
//       ),
//       bottomNavigationBar: ValueListenableBuilder<int>(
//         valueListenable: currentIndex,
//         builder: (context, index, _) {
//           return NavigationBarTheme(
//             data: NavigationBarThemeData(
//               indicatorColor: Colors.blue.shade100,
//               labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((
//                   states,
//                   ) {
//                 if (states.contains(WidgetState.selected)) {
//                   return TextStyle(
//                     color: AppColors.leadingTColor,
//                     fontWeight: FontWeight.bold,
//                   );
//                 }
//                 return const TextStyle(color: Colors.grey);
//               }),
//               iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((
//                   states,
//                   ) {
//                 if (states.contains(WidgetState.selected)) {
//                   return IconThemeData(color: AppColors.leadingTColor);
//                 }
//                 return const IconThemeData(color: Colors.grey);
//               }),
//             ),
//
//             child: NavigationBar(
//               selectedIndex: index,
//               onDestinationSelected:
//                   (selected) => currentIndex.value = selected,
//               destinations: [
//                 const NavigationDestination(
//                   icon: Icon(Icons.home),
//                   label: 'Home',
//                 ),
//                  NavigationDestination(
//                    icon:  HugeIcon(
//                      icon: HugeIcons.strokeRoundedNews,
//                      color: Colors.grey,
//
//                      size: 30.0,
//                    ),
//
//                   label: 'News',
//                 ),
//                 const NavigationDestination(
//                   icon: HugeIcon(icon:HugeIcons.strokeRoundedStudentCard , color: Colors.grey),
//                   label: 'Mobile ID',
//                 ),
//                 NavigationDestination(
//                   icon: HugeIcon(icon:HugeIcons.strokeRoundedSearchVisual , color: Colors.grey),
//                   label: 'Scan QR',
//                 ),
//                 const NavigationDestination(
//                   icon: HugeIcon(icon:HugeIcons.strokeRoundedDashboardSquare01, color: Colors.grey),
//                   label: 'Account',
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/home/presentation/pages/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../features/mobile_id/presentation/pages/passport_information.dart';

class MainBottomNavScreen extends StatelessWidget {
  MainBottomNavScreen({super.key});

  final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  final List<Widget?> screens = const [
    HomeScreen(),
    Center(child: Text("🛒 News")),
    null,
    Center(child: Text("❤️ Scan QR")),
    Center(child: Text("📂 Account")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (context, index, _) {
          return screens[index] ?? const SizedBox.shrink();
        },
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (context, index, _) {
          return NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.blue.shade100,
              labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
                (states) {
                  if (states.contains(WidgetState.selected)) {
                    return TextStyle(
                      color: AppColors.leadingTColor,
                      fontWeight: FontWeight.bold,
                    );
                  }
                  return const TextStyle(color: Colors.grey);
                },
              ),
              iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
                (states) {
                  if (states.contains(WidgetState.selected)) {
                    return IconThemeData(color: AppColors.leadingTColor);
                  }
                  return const IconThemeData(color: Colors.grey);
                },
              ),
            ),
            child: NavigationBar(
              selectedIndex: index,
              onDestinationSelected: (selected) {
                if (selected == 2) {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            backgroundColor: Colors.white,
                            contentPadding: const EdgeInsets.all(20),
                            insetPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [

                                // Header Row
                                Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 44,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: AppColors.leadingTColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: HugeIcon(
                                          icon: HugeIcons
                                              .strokeRoundedInformationCircle,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    // Container(
                                    //     width: 66,
                                    //     height: 44,
                                    //     decoration: BoxDecoration(
                                    //       shape: BoxShape.circle,
                                    //     ),
                                    //     child: ElevatedButton(
                                    //         onPressed: () {},
                                    //         child: Text('Close'))),
                                  ],
                                ),

                                const SizedBox(height: 16),

                                // Title Text
                                Text(
                                  "Passport Information",
                                  style: AppSizes.bolds(context),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Is your passport up to date?",
                                  style: AppSizes.catagoriTextSize(context),
                                  textAlign: TextAlign.center,
                                ),

                                const SizedBox(height: 16),

                                // Passport Form
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: PassportInformation(),
                                ),
                              ],
                            ),
                          ));
                } else {
                  currentIndex.value = selected;
                }
              },
              destinations: [
                const NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: HugeIcon(
                    icon: HugeIcons.strokeRoundedNews,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  label: 'News',
                ),
                const NavigationDestination(
                  icon: HugeIcon(
                      icon: HugeIcons.strokeRoundedStudentCard,
                      color: Colors.grey),
                  label: 'Mobile ID',
                ),
                NavigationDestination(
                  icon: HugeIcon(
                      icon: HugeIcons.strokeRoundedSearchVisual,
                      color: Colors.grey),
                  label: 'Scan QR',
                ),
                const NavigationDestination(
                  icon: HugeIcon(
                      icon: HugeIcons.strokeRoundedDashboardSquare01,
                      color: Colors.grey),
                  label: 'Account',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
