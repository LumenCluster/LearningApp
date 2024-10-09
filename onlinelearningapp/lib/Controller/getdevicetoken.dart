// ignore_for_file: non_constant_identifier_names

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class Getdevicetoken extends GetxController {
  String? DeviceToken;

  Future<void> GetDeviceToken() async {
    try {
      String? token = await FirebaseMessaging.instance.getToken();
      if (token != null) {
        DeviceToken = token;
        update();
      }
    } catch (e) {
      Get.snackbar("Error", "$e",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: maincolor,
          colorText: whitecolor);
    }
  }
}
