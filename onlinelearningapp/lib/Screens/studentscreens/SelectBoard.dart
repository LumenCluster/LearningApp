// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

import '../../CustomWidgets/outlinebutton.dart';
import 'SubjectSelection.dart';

class Selectboard extends StatelessWidget {
  // final List<String> Boards = ['IGCSE' , 'GCE' , 'AQA' , 'OCR' , 'GCSE' , 'EDEX'];
  Selectboard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "LOGO",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.favorite_border_outlined),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            // Container
            Container(
              height: screenHeight * 0.26,
              width: screenWidth * 0.97,
              decoration: BoxDecoration(
                  color: maincolor, borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Teach, Inspire, Lead',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: whitecolor,
                          ),
                        ),
                        // Spacing between text lines
                        Text(
                          'Start Tutoring!',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: whitecolor,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Elevatedbutton(
                          Onpressed: () {},
                          btntext: 'Become a Tutor',
                          textcolor: maincolor,
                          bgcolor: whitecolor,
                          height: 0.06,
                          width: 0.4,
                          fontsize: 12,
                          borderRadius: 10,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: Image.asset(
                      'assets/Images/Female.png',
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),

            //End Of Container
            SizedBox(
              height: 15,
            ),

            Text(
              "Explore International Examination Boards",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),

            SizedBox(
              height: 15,
            ),

            // Start of Outline Button

            Outlinebutton(
              sizeofFont: 16,
              height: 0.07,
              width: 0.6,
              Onpressed: () {
                Get.to(() => Subjectselection(
                      BoardName: 'IGCSE',
                      BoardnameStand:
                          "International General Certificate of Secondry Education",
                    ));
              },
              btntext: "IGCSE",
            ),
            SizedBox(
              height: 10,
            ),
            Outlinebutton(
              sizeofFont: 16,
              height: 0.07,
              width: 0.6,
              Onpressed: () {
                Get.to(() => Subjectselection(
                      BoardnameStand: "General Certificate of Education",
                      BoardName: 'GCE',
                    ));
              },
              btntext: "GCE",
            ),
            SizedBox(
              height: 10,
            ),
            Outlinebutton(
              sizeofFont: 16,
              height: 0.07,
              width: 0.6,
              Onpressed: () {
                Get.to(() => Subjectselection(
                      BoardnameStand: "Assessment and Qualifications Alliance",
                      BoardName: 'AQA',
                    ));
              },
              btntext: "AQA",
            ),
            SizedBox(
              height: 10,
            ),
            Outlinebutton(
              sizeofFont: 16,
              height: 0.07,
              width: 0.6,
              Onpressed: () {
                Get.to(() => Subjectselection(
                      BoardnameStand: "Oxford, Cambridge and RSA",
                      BoardName: 'OCR',
                    ));
              },
              btntext: "OCR",
            ),
            SizedBox(
              height: 10,
            ),
            Outlinebutton(
              sizeofFont: 16,
              height: 0.07,
              width: 0.6,
              Onpressed: () {
                Get.to(() => Subjectselection(
                      BoardnameStand:
                          "General Certificate of Secondary Education",
                      BoardName: 'GCSE',
                    ));
              },
              btntext: "GCSE",
            ),
            SizedBox(
              height: 10,
            ),
            Outlinebutton(
              sizeofFont: 16,
              height: 0.07,
              width: 0.6,
              Onpressed: () {
                Get.to(() => Subjectselection(
                      BoardnameStand: "Energy dispersive X-Ray",
                      BoardName: 'EDEX',
                    ));
              },
              btntext: "EDEX",
            ),
            // End  of Outline Button
          ],
        ),
      ),
    );
  }
}
