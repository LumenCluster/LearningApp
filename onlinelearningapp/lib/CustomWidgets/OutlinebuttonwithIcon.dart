// // ignore_for_file: non_constant_identifier_names, camel_case_types

// import 'package:flutter/material.dart';
// import 'package:onlinelearningapp/utils/appcolor.dart';

// class outlinebuttonwithicon extends StatelessWidget {
//   final String btntext;
//   final String path;
//   final VoidCallback Onpressed;
//   const outlinebuttonwithicon(
//       {super.key,
//       required this.btntext,
//       required this.Onpressed,
//       required this.path});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.sizeOf(context).height * 0.07,
//       width: MediaQuery.sizeOf(context).width * 0.9,
//       child: OutlinedButton.icon(
//         icon: Padding(
//           padding: const EdgeInsets.only(right: 100),
//           child: Image.asset(
//             path,
//             width: 30,
//             height: 30,
//           ),
//         ),
//         style: OutlinedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(4),
//             ),
//             textStyle: TextStyle(
//                 color: maincolor, fontSize: 16, fontWeight: FontWeight.w500),
//             foregroundColor: maincolor,
//             side: BorderSide(color: maincolor, width: 2)),
//         onPressed: Onpressed,
//         label: Padding(
//           padding: const EdgeInsets.only(right: 20),
//           child: Text(btntext),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class outlinebuttonwithicon extends StatelessWidget {
  final String btntext;
  final String path;
  final VoidCallback Onpressed;
  final value;

  const outlinebuttonwithicon({
    super.key,
    required this.btntext,
    required this.Onpressed,
    required this.path,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.07,
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          textStyle: TextStyle(
            color: maincolor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          foregroundColor: maincolor,
          side: BorderSide(color: maincolor, width: 2),
        ),
        onPressed: Onpressed,
        child: Stack(
          alignment: Alignment.center, // Center the text in the button
          children: [
            Align(
              alignment: value, // Align icon to the start
              child: Image.asset(
                path,
                width: 30,
                height: 30,
              ),
            ),
            Text(btntext), // Center text in the button
          ],
        ),
      ),
    );
  }
}
