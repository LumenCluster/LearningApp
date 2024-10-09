// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/CustomWidgets/CustomTextFields.dart';
import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
import 'package:onlinelearningapp/Roleselect.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

import '../../CustomWidgets/OutlinebuttonwithIcon.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  // Declare a variable to hold the selected radio button value
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text("Logo"),
            SizedBox(
              height: 8,
            ),
            Text(
              'Log In',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Welcome Back, You’ve been missed!'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 1,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value!; // Update the selected value
                    });
                  },
                ),
                Text("Student"),
                SizedBox(
                  width: 30,
                ),
                Radio(
                  value: 2,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                Text("Teacher"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Customtextfields(
                    btntext: "Email",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Customtextfields(
                    btntext: "Password",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: screenWidth * 0.83,
                    child: Elevatedbutton(
                        fontsize: 18,
                        height: 0.07,
                        width: 0.7,
                        Onpressed: () {
                          Get.to(() => Roleselect());
                        },
                        btntext: "Login",
                        textcolor: whitecolor,
                        bgcolor: maincolor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Or Continue with "),
                  SizedBox(
                    height: 20,
                  ),
                  outlinebuttonwithicon(
                    value: Alignment.centerLeft,
                    Onpressed: () {},
                    btntext: 'Google',
                    path: 'assets/Images/googleicon.png',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  outlinebuttonwithicon(
                    value: Alignment.centerLeft,
                    Onpressed: () {},
                    btntext: 'Facebook',
                    path: 'assets/Images/facebookicon.png',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Already have an account? Log In"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
