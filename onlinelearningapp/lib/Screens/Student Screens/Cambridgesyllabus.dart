// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:onlinelearningapp/CustomWidgets/smalloutlinebutton.dart';
import 'package:onlinelearningapp/Screens/Student%20Screens/Pastpaper.dart';
import 'package:onlinelearningapp/Screens/Student%20Screens/onlinesession.dart';
import '../../Controller/buttoncolorController.dart';
import '../../CustomWidgets/CustomListtile.dart';
import 'VideoLectures.dart';

// Assuming you've created this

class Cambridgesyllabus extends StatelessWidget {
  const Cambridgesyllabus({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonController buttonController = Get.put(ButtonController());
    final screenHeight = MediaQuery.sizeOf(context).height;

    // Dummy data for the file names and subtitles
    List<String> fileName = [
      "Science Notes",
      "History Notes",
      "Science Notes",
      "History Notes",
      "Science Notes",
      "History Notes",
    ];

    List<String> subtitle = [
      "Chapter 1 - Algebra",
      "Chapter 2 - Physics",
      "Chapter 1 - Algebra",
      "Chapter 2 - Physics",
      "Chapter 1 - Algebra",
      "Chapter 2 - Physics",
    ];

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

          // Scrollable row of buttons
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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Cambridges Syallbus",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),

          // Expanded ListView containing CustomListTiles
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(8.0),
              itemCount: fileName.length,
              itemBuilder: (context, index) {
                return CustomListTile(
                  title: fileName[index],
                  subtitle: '',
                  trailingImage: 'assets/Images/download.png',
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 20,
                  thickness: 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
