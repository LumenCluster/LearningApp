// ignore_for_file: file_names, non_constant_identifier_names, body_might_complete_normally_nullable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/SelectBoard.dart';
import 'package:onlinelearningapp/utils/appcolor.dart';
import '../Model/UserModel.dart';
import 'getdevicetoken.dart';

class RegisterController extends GetxController {
  Getdevicetoken getdevicetoken = Get.put(Getdevicetoken());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore Firestore = FirebaseFirestore.instance;

  Future<UserCredential?> SignupMethod(
    String Useremail,
    String Username,
    String Userpassword,
    String userDeviceToken,
  ) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: Useremail.trim(), password: Userpassword.trim());

      await userCredential.user!.sendEmailVerification();

      UserModel userModel = UserModel(
          uId: userCredential.user!.uid,
          username: Useremail.trim(),
          email: Useremail.trim(),
          phone: '',
          userImg: '',
          userDeviceToken: userDeviceToken,
          country: '',
          userAddress: '',
          street: '',
          isAdmin: false,
          isActive: true,
          createdOn: DateTime.now(),
          city: '');

      await Firestore.collection('User')
          .doc(userCredential.user!.uid)
          .set(userModel.toMap());

      Get.to(() => Selectboard());
      return userCredential;
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", "${e.message}",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: maincolor,
          colorText: whitecolor);
    }
  }
}
