import 'package:flutter/material.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class Elevatedbutton extends StatelessWidget {
  final String btntext;
  final VoidCallback Onpressed;
  final Color textcolor;
  final Color bgcolor;
  final double height;
  final double width;
  final double fontsize;
  final double borderRadius; // Added for custom border radius

  const Elevatedbutton({
    super.key,
    required this.Onpressed,
    required this.btntext,
    required this.textcolor,
    required this.bgcolor,
    required this.height,
    required this.width,
    this.fontsize = 16.0,
    this.borderRadius = 3.0, // Default radius value
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * height,
      width: MediaQuery.sizeOf(context).width * width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(borderRadius), // Use the custom radius
          ),
        ),
        onPressed: Onpressed,
        child: Text(
          btntext,
          style: TextStyle(
            fontSize: fontsize,
            color: textcolor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
