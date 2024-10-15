import 'package:flutter/material.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filter',
          style: TextStyle(color: whitecolor),
        ),
        centerTitle: true,
        backgroundColor: maincolor,
      ),
    );
  }
}
