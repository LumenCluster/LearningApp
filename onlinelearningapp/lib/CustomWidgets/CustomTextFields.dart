// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class Customtextfields extends StatelessWidget {
  final String btntext;
  const Customtextfields({super.key, required this.btntext});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: btntext,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: maincolor, width: 2))),
    );
  }
}
