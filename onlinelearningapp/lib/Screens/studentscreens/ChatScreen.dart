// // ignore_for_file: prefer_const_constructors, sort_child_properties_last

// import 'package:flutter/material.dart';
// import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
// import 'package:onlinelearningapp/CustomWidgets/smalloutlinebutton.dart';
// import 'package:onlinelearningapp/utils/appcolor.dart';

// class Chatscreen extends StatelessWidget {
//   const Chatscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.sizeOf(context).height;
//     final screenWidth = MediaQuery.sizeOf(context).width;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "CHAT SUBSCRIPTION ",
//           style: TextStyle(
//               fontSize: 18, fontWeight: FontWeight.w500, color: whitecolor),
//         ),
//         backgroundColor: maincolor,
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Elevatedbutton(
//                     Onpressed: () {},
//                     btntext: "CHAT",
//                     textcolor: whitecolor,
//                     bgcolor: maincolor,
//                     height: screenHeight * 0.00006,
//                     width: screenWidth * 0.0008),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 smalloutlinebtn(
//                     btntext: 'CALL',
//                     Onpressed: () {},
//                     height: screenHeight * 0.00006,
//                     width: screenWidth * 0.0007),
//               ],
//             ),
//           ),
//           Text("Chat With Tutor"),
//           Row(
//             children: [
//               Container(
//                 width: 50,
//                 height: 50,
//                 color: maincolor,
//                 child: Image.asset(
//                   'assets/Images/people.png',
//                   fit: BoxFit.cover,
//                   // Cover the entire container
//                   width: 50,
//                   height: 50,
//                 ),
//               ),
//               SizedBox(width: 10),
//               Expanded(
//                 child: Text(
//                   "Message your tutor as often as you need, with no limits.",
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   softWrap: true,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
import 'package:onlinelearningapp/CustomWidgets/outlinebutton.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/PaymentCONFIRMATION.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

import 'schedulecall.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CHAT SUBSCRIPTION",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: maincolor,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Elevatedbutton(
                  Onpressed: () {},
                  btntext: 'CHAT',
                  textcolor: whitecolor,
                  bgcolor: maincolor,
                  height: screenHeight * 0.000065,
                  width: screenWidth * 0.0008,
                ),
                SizedBox(
                  width: 25,
                ),
                Outlinebutton(
                    btntext: "CALL",
                    Onpressed: () {
                      Get.to(() => Scheduleclass());
                    },
                    height: screenHeight * 0.000065,
                    width: screenWidth * 0.0008,
                    sizeofFont: 16)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Chat With Tutor",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          buildRow(Icons.group,
              "Message your tutor as often as you need, with no limits."),
          buildRow(Icons.access_time,
              "Get timely replies to your questions and doubts."),
          buildRow(
              Icons.chat, "Get timely replies to your questions and doubts."),
          buildRow(Icons.attach_file,
              "Get timely replies to your questions and doubts."),
          SizedBox(
            height: 15,
          ),
          buildsecondRow(
            "Duration",
            "1 Months",
          ),
          Divider(),
          buildsecondRow("Duration", "1 Months"),
          Divider(),
          buildsecondRow("Duration", "1 Months"),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Elevatedbutton(
                Onpressed: () {
                  Get.to(() => Paymentconfirmation());
                },
                btntext: 'Proceed to payment',
                textcolor: whitecolor,
                bgcolor: maincolor,
                height: screenHeight * 0.00009,
                width: 0.8),
          )
        ],
      ),
    );
  }

  // Function for the Row Items

  Widget buildRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(color: maincolor, shape: BoxShape.circle),
            child: Icon(
              icon,
              color: whitecolor,
              size: 25,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(
            text,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ))
        ],
      ),
    );
  }

  // Second Row

  buildsecondRow(String text1, String text2) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
          Text(text2,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
