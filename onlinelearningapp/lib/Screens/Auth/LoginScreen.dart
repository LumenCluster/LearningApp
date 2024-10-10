// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unused_local_variable, non_constant_identifier_names, unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/Controller/Getuserdata.dart';
import 'package:onlinelearningapp/CustomWidgets/CustomTextFields.dart';
import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/SelectBoard.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

import '../../Controller/LoginController.dart';
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
    final LoginController loginController = Get.put(LoginController());
    final GetuserdataController getuserdataController =
        Get.put(GetuserdataController());
    TextEditingController Useremail = TextEditingController();
    TextEditingController Userpassword = TextEditingController();
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
                    Controller: Useremail,
                    btntext: "Email",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Customtextfields(
                    Controller: Userpassword,
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
                        Onpressed: () async {
                          String Email = Useremail.text.trim();
                          String Password = Userpassword.text.trim();

                          if (Email.isEmpty || Password.isEmpty) {
                            Get.snackbar(
                              "Error",
                              "Please fill the Details",
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: maincolor,
                              colorText: whitecolor,
                            );
                          } else {
                            try {
                              UserCredential? userCredential =
                                  await loginController.LoginMethod(
                                      Email, Password);
                              if (UserCredential != null) {
                                var UserData =
                                    await getuserdataController.Getdata(
                                        userCredential!.user!.uid);
                                if (userCredential.user!.emailVerified) {
                                  if (UserData != null && UserData.isNotEmpty) {
                                    Get.snackbar(
                                      "Success Admin Login",
                                      "Login Successfully!",
                                      snackPosition: SnackPosition.BOTTOM,
                                      backgroundColor: maincolor,
                                      colorText: whitecolor,
                                    );
                                  } else {
                                    Get.offAll(() => Selectboard());
                                  }
                                }
                              }
                            } catch (e) {
                              Get.snackbar(
                                "Error",
                                "An unexpected error occurred: $e",
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: maincolor,
                                colorText: whitecolor,
                              );
                            }
                          }
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
