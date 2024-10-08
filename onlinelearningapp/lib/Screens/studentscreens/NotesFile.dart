// // // ignore_for_file: prefer_const_constructors

// // import 'package:flutter/material.dart';
// // import 'package:onlinelearningapp/CustomWidgets/smalloutlinebutton.dart';
// // import 'package:onlinelearningapp/utils/appcolor.dart';

// // import '../../CustomWidgets/CustomListtile.dart';

// // class Classnoteslist extends StatelessWidget {
// //   const Classnoteslist({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final screenHeight = MediaQuery.sizeOf(context).height;
// //     return Scaffold(
// //       body: Column(
// //         children: [
// //           Container(
// //             height: screenHeight * 0.3,
// //             decoration: BoxDecoration(
// //                 color: maincolor,
// //                 // ignore: prefer_const_constructors
// //                 borderRadius:
// //                     BorderRadius.vertical(bottom: Radius.circular(30))),
// //           ),
// //           SingleChildScrollView(
// //             scrollDirection: Axis.horizontal,
// //             child: Padding(
// //               padding: const EdgeInsets.all(15),
// //               child: Row(
// //                 children: [
// //                   smalloutlinebtn(btntext: "Class Notes", Onpressed: () {}),
// //                   SizedBox(
// //                     width: 8,
// //                   ),
// //                   smalloutlinebtn(btntext: "Video Lecture", Onpressed: () {}),
// //                   SizedBox(
// //                     width: 8,
// //                   ),
// //                   smalloutlinebtn(btntext: "Online Class", Onpressed: () {}),
// //                   SizedBox(
// //                     width: 8,
// //                   ),
// //                   smalloutlinebtn(btntext: "Class Course", Onpressed: () {}),
// //                   SizedBox(
// //                     width: 8,
// //                   ),
// //                   smalloutlinebtn(btntext: "Class Course", Onpressed: () {}),
// //                 ],
// //               ),
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }

// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:onlinelearningapp/CustomWidgets/smalloutlinebutton.dart';
// import 'package:onlinelearningapp/utils/appcolor.dart';
// import '../../Controller/buttoncolorController.dart';
// import '../../CustomWidgets/CustomListtile.dart';
// import 'Cambridgesyllabus.dart';
// import 'Pastpaper.dart';
// import 'VideoLectures.dart'; // Assuming you've created this

// class Classnoteslist extends StatelessWidget {
//   const Classnoteslist({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final ButtonController buttonController = Get.put(ButtonController());
//     final screenHeight = MediaQuery.sizeOf(context).height;

//     // Dummy data for the file names and subtitles
//     List<String> fileName = [
//       "Math Notes",
//       "Science Notes",
//       "History Notes",
//       "English Notes",
//       "Urdu Notes",
//     ];

//     List<String> subtitle = [
//       "Chapter 1 - Algebra",
//       "Chapter 2 - Physics",
//       "World War II Summary",
//       "Grammar and Composition",
//       "Chapter Reading"
//     ];

//     return Scaffold(
//       body: Column(
//         children: [
//           // Top Container with background color
//           Container(
//             height: screenHeight * 0.3,
//             width: double.infinity,
//             child: ClipRRect(
//               borderRadius: BorderRadius.vertical(
//                 bottom: Radius.circular(25),
//               ),
//               child: Image.asset(
//                 'assets/Images/physics.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // Scrollable row of buttons
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Padding(
//               padding: const EdgeInsets.all(15),
//               child: Row(
//                 children: [
//                   smalloutlinebtn(
//                       color: buttonController.isOlevelselected.value
//                           ? Colors.blue // Selected color
//                           : Colors.grey,
//                       height: 0.07,
//                       width: 0.05,
//                       btntext: "Class Notes",
//                       Onpressed: () {}),
//                   SizedBox(width: 8),
//                   smalloutlinebtn(
//                       color: buttonController.isOlevelselected.value
//                           ? Colors.blue // Selected color
//                           : Colors.grey,
//                       height: 0.07,
//                       width: 0.05,
//                       btntext: "Video Lecture",
//                       Onpressed: () {
//                         // Get.to(() => Videolecture());
//                       }),
//                   SizedBox(width: 8),
//                   smalloutlinebtn(
//                       color: buttonController.isOlevelselected.value
//                           ? Colors.blue // Selected color
//                           : Colors.grey,
//                       height: 0.07,
//                       width: 0.05,
//                       btntext: "Past Paper",
//                       Onpressed: () {
//                         // Get.to(() => pastPaper());
//                       }),
//                   SizedBox(width: 8),
//                   smalloutlinebtn(
//                       color: buttonController.isOlevelselected.value
//                           ? Colors.blue // Selected color
//                           : Colors.grey,
//                       height: 0.07,
//                       width: 0.05,
//                       btntext: "Cambridge syllabus",
//                       Onpressed: () {
//                         Get.to(() => Cambridgesyllabus());
//                       }),
//                   SizedBox(width: 8),
//                   smalloutlinebtn(
//                       color: buttonController.isOlevelselected.value
//                           ? Colors.blue // Selected color
//                           : Colors.grey,
//                       height: 0.07,
//                       width: 0.05,
//                       btntext: "More...",
//                       Onpressed: () {}),
//                 ],
//               ),
//             ),
//           ),

//           // Expanded ListView containing CustomListTiles
//           Expanded(
//             child: ListView.separated(
//               padding: const EdgeInsets.all(8.0),
//               itemCount: fileName.length,
//               itemBuilder: (context, index) {
//                 return CustomListTile(
//                   leadingImage: 'assets/Images/lock.png', // Example image path
//                   title: fileName[index], // Use your file names here
//                   subtitle: subtitle[index], // Use your subtitles here
//                   trailingImage: 'assets/Images/download.png', // Example path
//                 );
//               },
//               separatorBuilder: (context, index) {
//                 return Divider(
//                   height: 20,
//                   thickness: 1,
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
