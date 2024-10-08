// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/SelectBoard.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/SubjectSelection.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

import 'CustomWidgets/ElevatedButton.dart';

class Roleselect extends StatelessWidget {
  const Roleselect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose your Role ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),

            // Student Button

            Elevatedbutton(
              fontsize: 18,
              height: 0.07,
              width: 0.7,
              bgcolor: maincolor,
              textcolor: Colors.white,
              btntext: "I'm Student",
              Onpressed: () {
                Get.off(() => Selectboard());
              },
            ),

            SizedBox(
              height: 20,
            ),

            // Tutor Button

            Elevatedbutton(
              fontsize: 18,
              height: 0.07,
              width: 0.7,
              bgcolor: maincolor,
              textcolor: Colors.white,
              btntext: "I'm Tutor",
              Onpressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
