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
import '../../features/mobile_id/presentation/pages/passport_update.dart';
import '../../features/news/presentation/pages/news_channel_list_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  final List<Widget?> screens = const [
    HomeScreen(),
    // Center(child: Text("🛒 News")),

    NewsChannelListScreen(),
    PassportInformation(),

    Center(child: Text("❤️ Scan QR")),
    Center(child: Text("📂 Account")),
  ];

  @override
  void dispose() {
    currentIndex.dispose();
    super.dispose();
  }

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
                      color: AppColors.seed,
                      fontWeight: FontWeight.bold,
                    );
                  }
                  return const TextStyle(color: Colors.grey);
                },
              ),
              iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
                    (states) {
                  if (states.contains(WidgetState.selected)) {
                    return IconThemeData(color: AppColors.seed);
                  }
                  return const IconThemeData(color: Colors.grey);
                },
              ),
            ),
            child: NavigationBar(
              selectedIndex: index,
              onDestinationSelected: (selected) {
                currentIndex.value = selected;
              },
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: HugeIcon(
                      icon: HugeIcons.strokeRoundedNews,
                      color: Colors.grey,
                      size: 30.0),
                  label: 'News',
                ),
                NavigationDestination(
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
                NavigationDestination(
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

