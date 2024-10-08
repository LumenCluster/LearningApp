// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:onlinelearningapp/CustomWidgets/smalloutlinebutton.dart';
// import 'package:onlinelearningapp/Screens/Student%20Screens/onlinesession.dart';
// import 'package:onlinelearningapp/utils/appcolor.dart';

// import '../../Constant/NotesFilename.dart';
// import '../../Controller/buttoncolorController.dart';
// import '../../CustomWidgets/CustomListtile.dart';
// import 'Cambridgesyllabus.dart';
// import 'VideoLectures.dart';

// class SubjectDetailScreen extends StatelessWidget {
//   final String subjectName;

//   SubjectDetailScreen({required this.subjectName});

//   @override
//   Widget build(BuildContext context) {
//     final ButtonController buttonController = Get.put(ButtonController());
//     final screenHeight = MediaQuery.sizeOf(context).height;
//     final screeWidth = MediaQuery.sizeOf(context).width;

//     return Scaffold(
//         body: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Stack(
//           children: [
//             SizedBox(
//               height: screenHeight * 0.3,
//               width: screeWidth,
//               child: ClipRRect(
//                 borderRadius:
//                     BorderRadius.vertical(bottom: Radius.circular(25)),
//                 child: Image.asset(
//                   'assets/Images/Biology.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Positioned.fill(
//               top: screenHeight * 0.13,
//               left: screeWidth * 0.38,
//               child: Text(
//                 subjectName,
//                 style: TextStyle(
//                     color: whitecolor,
//                     fontSize: 26,
//                     fontWeight: FontWeight.w600),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Obx(
//                   () => smalloutlinebtn(
//                     btntext: 'Past Paper',
//                     Onpressed: () {
//                       buttonController.selectButton(0);
//                     },
//                     height: 0.034,
//                     width: 0.32,
//                     isSelected: buttonController.selectedButtonIndex.value == 0,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Obx(
//                   () => smalloutlinebtn(
//                     btntext: 'Cambridge syllabus',
//                     Onpressed: () {
//                       buttonController.selectButton(1);
//                       Get.to(() => Cambridgesyllabus());
//                     },
//                     height: 0.034,
//                     width: 0.5,
//                     isSelected: buttonController.selectedButtonIndex.value == 1,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Obx(
//                   () => smalloutlinebtn(
//                     btntext: 'Online Classes',
//                     Onpressed: () {
//                       buttonController.selectButton(2);
//                       Get.to(() => OnlineSession());
//                     },
//                     height: 0.034,
//                     width: 0.38,
//                     isSelected: buttonController.selectedButtonIndex.value == 2,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Obx(
//                   () => smalloutlinebtn(
//                     btntext: 'Video Lectures',
//                     Onpressed: () {
//                       buttonController.selectButton(3);
//                       Get.to(() => videolectures());
//                     },
//                     height: 0.034,
//                     width: 0.38,
//                     isSelected: buttonController.selectedButtonIndex.value == 3,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             "Past Paper",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//           ),
//         ),
//         Expanded(
//           child: ListView.separated(
//             padding: const EdgeInsets.all(8.0),
//             itemCount: fileName.length,
//             itemBuilder: (context, index) {
//               return CustomListTile(
//                 title: fileName[index],
//                 subtitle: '',
//                 trailingImage: 'assets/Images/download.png',
//               );
//             },
//             separatorBuilder: (context, index) {
//               return Divider(
//                 height: 20,
//                 thickness: 0,
//               );
//             },
//           ),
//         ),
//       ],
//     ));
//   }
// }
