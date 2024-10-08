// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
// import 'package:onlinelearningapp/CustomWidgets/OutlinebuttonwithIcon.dart';
// import 'package:onlinelearningapp/utils/appcolor.dart';

// import '../../CustomWidgets/outlinebutton.dart';

// class TutorDetails extends StatelessWidget {
//   const TutorDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.sizeOf(context).height;
//     final screenWidth = MediaQuery.sizeOf(context).width;

//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Top Container with background color
//           Container(
//             height: screenHeight * 0.3,
//             width: double.infinity,
//             decoration: BoxDecoration(color: maincolor),
//             child: ClipRRect(
//               borderRadius: BorderRadius.vertical(
//                 bottom: Radius.circular(25),
//               ),
//               child: Image.asset(
//                 'assets/Images/physics.png',
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           //Out line Button of Subject & Experience
//           Padding(
//             padding: const EdgeInsets.only(top: 10, left: 10),
//             child: Row(
//               children: [
//                 Outlinebutton(
//                   sizeofFont: 13,
//                   height: 0.05,
//                   width: 0.45,
//                   Onpressed: () {},
//                   btntext: 'Physics , English',
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Outlinebutton(
//                   sizeofFont: 13,
//                   height: 0.05,
//                   width: 0.48,
//                   Onpressed: () {},
//                   btntext: '4 years Experience',
//                 ),
//               ],
//             ),
//           ),

//           //End Of outline button
//           SizedBox(
//             height: 15,
//           ),
//           Center(
//             child: outlinebuttonwithicon(
//                 value: Alignment.centerRight,
//                 btntext:
//                     'See Schedule                                           ',
//                 Onpressed: () {},
//                 path: 'assets/Images/drop.png'),
//           ),
//           SizedBox(
//             height: 15,
//           ),

//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Text(
//               "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irurer.",
//               textAlign: TextAlign.justify,
//             ),
//           ),

//           Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Review"),
//                 Text("see all"),
//               ],
//             ),
//           ),

//           Container(
//             child: Row(
//               children: [
//                 Image.asset(''),
//                 Column(
//                   children: [
//                     Text('John Doe'),
//                     Text(
//                         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irurer.')
//                   ],
//                 )
//               ],
//             ),
//           ),

//           Center(
//             child: Elevatedbutton(
//                 Onpressed: () {},
//                 btntext: 'Schedule a Class',
//                 textcolor: whitecolor,
//                 bgcolor: maincolor,
//                 height: 0.07,
//                 width: 0.6),
//           )
//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
import 'package:onlinelearningapp/CustomWidgets/OutlinebuttonwithIcon.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/ChatScreen.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

import '../../CustomWidgets/outlinebutton.dart';

class TutorDetails extends StatefulWidget {
  const TutorDetails({super.key});

  @override
  _TutorDetailsState createState() => _TutorDetailsState();
}

class _TutorDetailsState extends State<TutorDetails> {
  bool _isExpanded = false; // Track whether the full text is shown or not

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Container with background color
          Container(
            height: screenHeight * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(color: maincolor),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
              child: Image.asset(
                'assets/Images/physics.png', // Ensure this path is correct
                fit: BoxFit.cover, // Ensure image fits properly
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Outline Button for Subject & Experience
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                Outlinebutton(
                  sizeofFont: 13,
                  height: 0.05,
                  width: 0.45,
                  Onpressed: () {},
                  btntext: 'Physics , English',
                ),
                SizedBox(
                  width: 10,
                ),
                Outlinebutton(
                  sizeofFont: 13,
                  height: 0.05,
                  width: 0.48,
                  Onpressed: () {},
                  btntext: '4 years Experience',
                ),
              ],
            ),
          ),

          //End Of outline button
          SizedBox(
            height: 15,
          ),
          Center(
            child: outlinebuttonwithicon(
                value: Alignment.centerRight,
                btntext:
                    'See Schedule                                           ',
                Onpressed: () {},
                path: 'assets/Images/drop.png'),
          ),
          SizedBox(
            height: 15,
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irurer.",
              textAlign: TextAlign.justify,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Review"),
                Text("see all"),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/Images/teacher.png', // Ensure this path is correct
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover, // Ensure the image is properly sized
                ),
                SizedBox(width: 10),
                Expanded(
                  // Wrap in Expanded to avoid overflow
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        _isExpanded
                            ? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irurer.'
                            : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...',
                        maxLines: _isExpanded
                            ? null
                            : 2, // Show only 2 lines when collapsed
                        overflow: _isExpanded
                            ? TextOverflow.visible
                            : TextOverflow.ellipsis,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isExpanded =
                                !_isExpanded; // Toggle between showing more/less
                          });
                        },
                        child: Text(
                          _isExpanded ? 'Read Less' : 'Read More',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Center(
            child: Elevatedbutton(
                Onpressed: () {
                  Get.to(() => Chatscreen());
                },
                btntext: 'Book a Session',
                textcolor: whitecolor,
                bgcolor: maincolor,
                height: 0.07,
                width: 0.6),
          ),
        ],
      ),
    );
  }
}
