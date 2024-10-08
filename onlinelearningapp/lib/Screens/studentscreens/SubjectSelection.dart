// ignore_for_file: prefer_const_constructors, unused_local_variable, sort_child_properties_last, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/CustomWidgets/CustomGrideView.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';
import '../../Controller/buttoncolorController.dart';
import '../../CustomWidgets/smalloutlinebutton.dart';

class Subjectselection extends StatelessWidget {
  final String BoardName;
  final String BoardnameStand;
  const Subjectselection(
      {super.key, required this.BoardName, required this.BoardnameStand});

  @override
  Widget build(BuildContext context) {
    final ButtonController buttonController = Get.put(ButtonController());
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // First Container
              Container(
                height: screenHeight * 0.3,
                decoration: BoxDecoration(
                    color: maincolor,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(25))),
              ),

              // End Of COntainer

              // Showing Board Name

              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      BoardName, // Display the board name
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        BoardnameStand, // Display the board name
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              // Search bar

              Positioned(
                top: screenHeight * 0.3 - 35,
                left: screenWidth * 0.12,
                right: screenWidth * 0.12,
                bottom: screenHeight * -0.017,
                child: Material(
                  elevation: 5,
                  borderRadius:
                      BorderRadius.circular(20), // TextField border radius
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor:
                            Colors.white, // Background color of the TextField
                        filled: true,
                        hintText: 'Search Here',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none)),
                  ),
                ),
              ),
            ],
          ),

          // Search Bar completed

          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(12),

              // Button

              child: Row(
                children: [
                  Obx(
                    () => smalloutlinebtn(
                      btntext: 'O-level',
                      Onpressed: () {
                        buttonController
                            .selectButton(0); // Set selected button index
                      },
                      height: 0.034,
                      width: 0.26,
                      // color: maincolor,
                      isSelected: buttonController.selectedButtonIndex.value ==
                          0, // Check if this button is selected
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Obx(
                    () => smalloutlinebtn(
                      btntext: 'A-level',
                      Onpressed: () {
                        buttonController
                            .selectButton(1); // Set selected button index
                      },
                      height: 0.034,
                      width: 0.26,
                      //color: maincolor,
                      isSelected: buttonController.selectedButtonIndex.value ==
                          1, // Check if this button is selected
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
          ),

          /// End Of the Buttons

          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
            ),
            child: Text(
              "Select Your Subject",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),

          // Grid View

          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomGridView(),
          ))
        ],
      ),
    );
  }
}
