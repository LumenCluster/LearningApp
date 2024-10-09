// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class Customtextfields extends StatelessWidget {
  final String btntext;
  final TextEditingController Controller;
  const Customtextfields(
      {super.key, required this.btntext, required this.Controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Controller,
      decoration: InputDecoration(
          hintText: btntext,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: maincolor, width: 2))),
    );
  }
}
