// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/CustomWidgets/smalloutlinebutton.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';
import 'package:intl/intl.dart';
import '../../CustomWidgets/ElevatedButton.dart';
import 'callpaymentconfirmation.dart';

class Scheduleclass extends StatelessWidget {
  const Scheduleclass({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).height;

    final formattedDate = DateFormat('EEE,d MMM').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SCHEDULE A CALL',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: maincolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                smalloutlinebtn(
                  btntext: 'CHAT',
                  Onpressed: () {},
                  height: screenHeight * 0.000065,
                  width: screenWidth * 0.0004,
                ),
                const SizedBox(
                  width: 20,
                ),
                Elevatedbutton(
                  Onpressed: () {},
                  btntext: 'CALL',
                  textcolor: whitecolor,
                  bgcolor: maincolor,
                  height: screenHeight * 0.000065,
                  width: screenWidth * 0.0004,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                'Schedule a live one to one session with expert tutors. Choose your date, time for this week.'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Choose Date & Time',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Container(
              height: screenHeight * 0.38,
              width: screenWidth * 0.4,
              decoration: BoxDecoration(
                  border: Border.all(color: maincolor, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Mon'),
                      SizedBox(
                        width: 25,
                      ),
                      Text('Tue'),
                      SizedBox(
                        width: 25,
                      ),
                      Text('Wed'),
                      SizedBox(
                        width: 25,
                      ),
                      Text("Thu"),
                      SizedBox(
                        width: 25,
                      ),
                      Text("Fri"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(color: maincolor, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('12 : 00 AM')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(color: maincolor, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('12 : 00 AM')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(color: maincolor, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('12 : 00 AM')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              formattedDate, // Display the formatted date
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Elevatedbutton(
                Onpressed: () {
                  Get.to(() => callPaymentconfirmation());
                },
                btntext: 'Proceed to payment',
                textcolor: whitecolor,
                bgcolor: maincolor,
                height: screenHeight * 0.00009,
                width: screenWidth * 0.0011)
          ],
        ),
      ),
    );
  }
}
