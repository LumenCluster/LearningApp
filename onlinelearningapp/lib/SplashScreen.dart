// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/Screens/Student%20Screens/SelectBoard.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      print('Navigating to Selectboard screen');
      Get.off(() => Selectboard());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: maincolor,
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/Images/applogo.png',
                  width: 200,
                  height: 200,
                ),
              )
            ],
          ),
        ));
  }
}
