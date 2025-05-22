// import 'package:egov_bd/core/constant/app_images.dart';
// import 'package:flutter/material.dart';
//
// class TravelScreen extends StatelessWidget {
//   const TravelScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           // Top Banner Image
//           ClipRRect(
//             borderRadius: const BorderRadius.only(
//               bottomLeft: Radius.circular(30),
//               bottomRight: Radius.circular(30),
//             ),
//             child: Image.asset(
//               AppImages.travelBanner, // Replace with your image path
//               fit: BoxFit.cover,
//               height: 200,
//               width: double.infinity,
//             ),
//           ),
//
//           const SizedBox(height: 30),
//
//           // Middle Icons
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 backgroundColor: Colors.grey.shade200,
//                 radius: 30,
//                 child: Icon(Icons.public, size: 30, color: Colors.blue),
//               ),
//               const SizedBox(width: 16),
//               const Icon(Icons.swap_horiz, size: 30),
//               const SizedBox(width: 16),
//               CircleAvatar(
//                 backgroundColor: Colors.grey.shade200,
//                 radius: 30,
//                 child: Icon(Icons.navigation, size: 30, color: Colors.red),
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 30),
//
//           // Info Text
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24.0),
//             child: Column(
//               children: const [
//                 Text(
//                   'To continue, the following eGovPH app information need to be shared with eTravel.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Name, Phone Number, and Email Address',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),
//
//           const Spacer(),
//
//           // Buttons
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
//             child: Column(
//               children: [
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       padding: const EdgeInsets.symmetric(vertical: 14),
//                     ),
//                     onPressed: () {
//                       // Handle Agree action
//                     },
//                     child: const Text(
//                       'I Agree',
//                       style: TextStyle(fontSize: 16, color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 SizedBox(
//                   width: double.infinity,
//                   child: OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: BorderSide(color: Colors.grey.shade400),
//                       padding: const EdgeInsets.symmetric(vertical: 14),
//                     ),
//                     onPressed: () {
//                       // Handle Cancel action
//                     },
//                     child: const Text(
//                       'Cancel',
//                       style: TextStyle(fontSize: 16, color: Colors.black),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
