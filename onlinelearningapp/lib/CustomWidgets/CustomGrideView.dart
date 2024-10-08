import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/Boards/Subjects/bilogy.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/Boards/Subjects/chemistry.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/Boards/Subjects/english.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/Boards/Subjects/maths.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/chemistry.dart';

// Import other subject screens as needed

class CustomGridView extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/Images/Biology.png',
    'assets/Images/chemistry.png',
    'assets/Images/Maths.png',
    'assets/Images/English.png',
    'assets/Images/Econimics.png',
    'assets/Images/physics.png',
  ];

  final List<String> imageTexts = [
    'Biology',
    'Chemistry',
    'Mathematics',
    'English',
    'Economics',
    'Physics',
  ];

  // Map each subject to its corresponding screen

  final Map<String, Widget> subjectScreens = {
    'Biology': Biologysubject(
      subjectName: 'Biology',
    ),
    'Chemistry': Chemistrysubject(
      subjectName: 'Chemistry ',
    ),
    'Mathematics': Mathssubject(
      subjectName: "Mathematics",
    ),
    'English': Englishsubjects(
      subjectName: 'English',
    ),
  };

  CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: imagePaths.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  // Navigate to the appropriate screen based on the selected subject
                  String subject = imageTexts[index];
                  if (subjectScreens.containsKey(subject)) {
                    Get.to(() => subjectScreens[
                        subject]!); // Navigate to the corresponding screen
                  }
                },
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePaths[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        imageTexts[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
