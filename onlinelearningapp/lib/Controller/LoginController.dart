// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore Firestore = FirebaseFirestore.instance;

  Future<UserCredential?> LoginMethod(
      String Useremail, String Userpassword) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: Useremail, password: Userpassword);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", "$e",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: maincolor,
          colorText: whitecolor);
    }
  }
}
