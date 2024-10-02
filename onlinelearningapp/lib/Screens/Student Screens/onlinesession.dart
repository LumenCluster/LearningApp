// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/Controller/buttoncolorController.dart';
import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
import 'package:onlinelearningapp/CustomWidgets/smalloutlinebutton.dart';
import 'package:onlinelearningapp/Screens/Student%20Screens/Pastpaper.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';
import 'Cambridgesyllabus.dart';
import 'Tutordetails.dart';
import 'VideoLectures.dart';

// Assuming you've created this

class OnlineSession extends StatelessWidget {
  const OnlineSession({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonController buttonController = Get.put(ButtonController());
    final screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Container with background color
          Container(
            height: screenHeight * 0.3,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
              child: Image.asset(
                'assets/Images/physics.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Row Button

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Obx(
                    () => smalloutlinebtn(
                      btntext: 'Past Paper',
                      Onpressed: () {
                        buttonController.selectButton(0);
                        Get.to(() => PastPaper(
                              subjectName: '',
                            ));
                      },
                      height: 0.034,
                      width: 0.38,
                      isSelected:
                          buttonController.selectedButtonIndex.value == 0,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Obx(
                    () => smalloutlinebtn(
                      btntext: 'Cambridges Syllabus',
                      Onpressed: () {
                        buttonController.selectButton(1);
                        Get.to(() => Cambridgesyllabus());
                      },
                      height: 0.034,
                      width: 0.5,
                      isSelected:
                          buttonController.selectedButtonIndex.value == 1,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Obx(
                    () => smalloutlinebtn(
                      btntext: 'Online Classes',
                      Onpressed: () {
                        buttonController.selectButton(2);
                        Get.to(() => OnlineSession());
                      },
                      height: 0.034,
                      width: 0.38,
                      isSelected:
                          buttonController.selectedButtonIndex.value == 2,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Obx(
                    () => smalloutlinebtn(
                      btntext: 'Video Lectures',
                      Onpressed: () {
                        buttonController.selectButton(3);
                        Get.to(() => videolectures());
                      },
                      height: 0.034,
                      width: 0.38,
                      isSelected:
                          buttonController.selectedButtonIndex.value == 3,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // End Of Button
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Book online session ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Image.asset('assets/Images/Onlinesession.png'),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Get personalized help from an expert tutor Choose a time and focus on the topics you need. Find your Tutor yourself!",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Elevatedbutton(
                Onpressed: () {
                  Get.to(() => TutorDetails());
                },
                btntext: 'Find a Tutor',
                textcolor: whitecolor,
                bgcolor: maincolor,
                height: 0.07,
                width: 0.6),
          )
        ],
      ),
    );
  }
}
