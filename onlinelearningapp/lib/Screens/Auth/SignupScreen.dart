// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/CustomWidgets/CustomTextFields.dart';
import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
import 'package:onlinelearningapp/Screens/Auth/LoginScreen.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

import '../../CustomWidgets/OutlinebuttonwithIcon.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
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
            Text('Create your Account as'),
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
                  Customtextfields(
                    btntext: "Name",
                  ),
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
                    height: 20,
                  ),
                  SizedBox(
                    width: screenWidth * 0.83,
                    child: Elevatedbutton(
                        fontsize: 18,
                        height: 0.07,
                        width: 0.7,
                        Onpressed: () {
                          Get.to(() => Loginscreen());
                        },
                        btntext: "Sign Up",
                        textcolor: whitecolor,
                        bgcolor: maincolor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Or Continue with "),
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
