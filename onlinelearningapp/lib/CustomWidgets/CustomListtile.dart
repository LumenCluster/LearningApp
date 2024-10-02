// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:onlinelearningapp/utils/appcolor.dart';

// // Reusable Custom ListTile Widget
// class CustomListTile extends StatelessWidget {
//   final String? leadingImage;
//   final String title;
//   final String? subtitle;
//   final String trailingImage;

//   const CustomListTile({
//     Key? key,
//     required this.title,
//     required this.subtitle,
//     required this.trailingImage,
//     this.leadingImage,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(25),
//       child: ListTile(
//         tileColor: listcolor,
//         leading: leadingImage != null
//             ? Image.asset(
//                 leadingImage!,
//                 width: 40,
//                 height: 40,
//               )
//             : null,
//         title: Text(
//           title,
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//         ),
//         titleAlignment: ListTileTitleAlignment.center,
//         subtitle: subtitle != null
//             ? Text(
//                 subtitle!,
//                 style: TextStyle(
//                     color: const Color.fromARGB(255, 238, 238, 238),
//                     fontSize: 14),
//               )
//             : null,
//         trailing: Image.asset(
//           trailingImage,
//           width: 30,
//           height: 30,
//         ),
//         contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//         onTap: () {},
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

// Reusable Custom ListTile Widget
class CustomListTile extends StatelessWidget {
  final String? leadingImage;
  final String title;
  final String? subtitle;
  final String trailingImage;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.trailingImage,
    this.leadingImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15), // Rounded corners
      child: Container(
        color: listcolor, // Custom background color
        child: ListTile(
          leading: leadingImage != null
              ? Image.asset(
                  leadingImage!,
                  width: 40,
                  height: 40,
                )
              : null,
          title: Align(
            alignment: Alignment.centerLeft, // Align text to the start center
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black, // Custom text color
              ),
            ),
          ),
          subtitle: subtitle != null
              ? Align(
                  alignment: Alignment
                      .centerLeft, // Align subtitle to the start center
                  child: Text(
                    subtitle!,
                    style: TextStyle(
                      color: Color.fromARGB(255, 238, 238, 238),
                      fontSize: 14,
                    ),
                  ),
                )
              : null,
          trailing: Image.asset(
            trailingImage,
            width: 30,
            height: 30,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          onTap: () {},
        ),
      ),
    );
  }
}
