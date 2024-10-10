// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:onlinelearningapp/Controller/Siginwithgoogle.dart';
import 'package:onlinelearningapp/CustomWidgets/CustomTextFields.dart';
import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
import 'package:onlinelearningapp/Screens/Auth/LoginScreen.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

import '../../Controller/RegisterwithemailController.dart';
import '../../CustomWidgets/OutlinebuttonwithIcon.dart';

class signupScreen extends StatefulWidget {
  signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  int _selectedValue = 1;
  final RegisterController registerController = Get.put(RegisterController());
  final siginGoogleController _siginGoogleController =
      Get.put(siginGoogleController());
  TextEditingController Username = TextEditingController();
  TextEditingController Useremail = TextEditingController();
  TextEditingController Userpassword = TextEditingController();

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
              'Create your Account as',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
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
                Text(
                  "Student",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
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
                Text(
                  "Teacher",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Customtextfields(
                    Controller: Username,
                    btntext: "Name",
                  ),
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
                    height: 20,
                  ),
                  SizedBox(
                    width: screenWidth * 0.83,
                    child: Elevatedbutton(
                        fontsize: 18,
                        height: 0.07,
                        width: 0.7,
                        Onpressed: () async {
                          String Email = Useremail.text.trim();
                          String Name = Username.text.trim();
                          String Password = Userpassword.text.trim();
                          String userDeviceToken = '';

                          if (Email.isEmpty ||
                              Name.isEmpty ||
                              Password.isEmpty) {
                            Get.snackbar("Error", "Please fill all details",
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: maincolor,
                                colorText: Colors.white);
                          } else if (!GetUtils.isEmail(Email)) {
                            Get.snackbar("Error", "Please Enter a Vaild Email",
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: maincolor,
                                colorText: Colors.white);
                          } else {
                            try {
                              UserCredential? userCredential =
                                  await registerController.SignupMethod(
                                Email,
                                Name,
                                Password,
                                userDeviceToken,
                              );

                              if (userCredential != null) {
                                Get.snackbar("Email Verification",
                                    "Please check your email",
                                    snackPosition: SnackPosition.BOTTOM,
                                    backgroundColor: maincolor,
                                    colorText: Colors.white);

                                FirebaseAuth.instance.signOut();
                                Get.offAll(() => Loginscreen());
                              }
                            } catch (e) {
                              Get.snackbar("SignUp Faild", e.toString(),
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: maincolor,
                                  colorText: Colors.white);
                            }
                          }
                        },
                        btntext: "Sign Up",
                        textcolor: whitecolor,
                        bgcolor: maincolor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Or Continue with "),
                  SizedBox(
                    height: 10,
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
