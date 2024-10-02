// // ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:onlinelearningapp/utils/appcolor.dart';

// class smalloutlinebtn extends StatelessWidget {
//   final String btntext;
//   final VoidCallback Onpressed;
//   final double width;
//   final double height;

//   const smalloutlinebtn({
//     super.key,
//     required this.btntext,
//     required this.Onpressed,
//     required this.height,
//     required this.width,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.sizeOf(context).height * height,
//       width: MediaQuery.sizeOf(context).width * width,
//       child: OutlinedButton(
//         style: OutlinedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(4),
//             ),
//             textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
//             foregroundColor: maincolor,
//             side: BorderSide(width: 2)),
//         onPressed: Onpressed,
//         child: Text(btntext),
//       ),
//     );
//   }
// }

// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:onlinelearningapp/utils/appcolor.dart';

// class smalloutlinebtn extends StatelessWidget {
//   final String btntext;
//   final VoidCallback Onpressed;
//   final double width;
//   final double height;
//   final Color color; // This color will represent the button color when selected

//   const smalloutlinebtn({
//     super.key,
//     required this.btntext,
//     required this.Onpressed,
//     required this.height,
//     required this.width,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.sizeOf(context).height * height,
//       width: MediaQuery.sizeOf(context).width * width,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor:
//               Colors.transparent, // Set the background color to transparent
//           side: BorderSide(color: color, width: 2), // Define the border color
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(4),
//           ),
//           elevation: 0, // Remove the shadow effect
//           textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
//         ),
//         onPressed: Onpressed,
//         child: Text(btntext, style: TextStyle(color: color)), // Set text color
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:onlinelearningapp/utils/appcolor.dart';

// class smalloutlinebtn extends StatelessWidget {
//   final String btntext;
//   final VoidCallback Onpressed;
//   final double width;
//   final double height;
//   final Color color; // This color will represent the button border color
//   final bool isSelected; // To determine if the button is selected

//   const smalloutlinebtn({
//     super.key,
//     required this.btntext,
//     required this.Onpressed,
//     required this.height,
//     required this.width,
//     required this.color,
//     this.isSelected = false, // Default value for isSelected
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.sizeOf(context).height * height,
//       width: MediaQuery.sizeOf(context).width * width,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: isSelected
//               ? color
//               : Colors.transparent, // Change background color if selected
//           side: BorderSide(color: color, width: 2), // Define the border color
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(4),
//           ),
//           elevation: 0, // Remove the shadow effect
//           textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
//         ),
//         onPressed: Onpressed,
//         child: Text(btntext, style: TextStyle(color: color)), // Set text color
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class smalloutlinebtn extends StatelessWidget {
  final String btntext;
  final VoidCallback Onpressed;
  final double width;
  final double height;
  final bool isSelected;

  const smalloutlinebtn({
    super.key,
    required this.btntext,
    required this.Onpressed,
    required this.height,
    required this.width,
    this.isSelected = false, // Default value for isSelected
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * height,
      width: MediaQuery.sizeOf(context).width * width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected
              ? maincolor
              : Colors.transparent, // Selected button has blue background
          side: BorderSide(
            color: isSelected
                ? Colors.white
                : Colors.grey, // White border when selected, grey otherwise
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          elevation: 0, // Remove the shadow effect
          textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        onPressed: Onpressed,
        child: Text(
          btntext,
          style: TextStyle(
            color: isSelected
                ? Colors.white
                : Colors
                    .black54, // White text when selected, light black otherwise
          ),
        ),
      ),
    );
  }
}
