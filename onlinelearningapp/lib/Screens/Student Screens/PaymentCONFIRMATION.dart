// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:onlinelearningapp/CustomWidgets/ElevatedButton.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class Paymentconfirmation extends StatelessWidget {
  const Paymentconfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CONFIRMATION",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: maincolor,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset('assets/Images/Fimage.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "John Doe",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "PHYSICS(IGC-O)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "00 October- 00 October",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: maincolor, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "You're about to subscribe for a monthly chat plan!",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: whitecolor),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          buildRow('Duration', '1 Months'),
          Divider(),
          buildRow('Duration', '1 Months'),
          Divider(),
          buildRow('Duration', '1 Months'),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Payment Method",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          buildRadiobutton(text: 'Credit Card or Debit Card'),
          buildRadiobutton(text: 'Paypal'),
          buildRadiobutton(text: 'Jazzcash')
        ],
      ),
    );
  }

  buildRow(String text1, String text2) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
          Text(
            text2,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  buildRadiobutton({int selectedValue = 1, required String text}) {
    return Row(
      children: [
        Radio(value: 1, groupValue: selectedValue, onChanged: (value) {}),
        Text(text)
      ],
    );
  }
}
