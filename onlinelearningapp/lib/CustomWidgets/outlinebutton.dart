// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class Outlinebutton extends StatelessWidget {
  final String btntext;
  final VoidCallback Onpressed;
  final double width;
  final double height;
  final double sizeofFont;

  const Outlinebutton(
      {super.key,
      required this.btntext,
      required this.Onpressed,
      required this.height,
      required this.width,
      required this.sizeofFont});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * height,
      width: MediaQuery.sizeOf(context).width * width,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            textStyle: TextStyle(
                color: maincolor,
                fontSize: sizeofFont,
                fontWeight: FontWeight.w500),
            foregroundColor: maincolor,
            side: BorderSide(color: maincolor, width: 2)),
        onPressed: Onpressed,
        child: Text(btntext),
      ),
    );
  }
}
