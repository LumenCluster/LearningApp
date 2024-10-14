// // ignore_for_file: camel_case_types, non_constant_identifier_names

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:onlinelearningapp/Controller/getdevicetoken.dart';
// import 'package:onlinelearningapp/Screens/StudentScreens/SelectBoard.dart';

// import '../Model/UserModel.dart';

// class siginGoogleController extends GetxController {
//   final Getdevicetoken getdevicetoken = Get.put(Getdevicetoken());
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   Future<void> GoogleSiginMethod() async {
//     try {
//       final GoogleSignInAccount? googleSignInAccount =
//           await _googleSignIn.signIn();

//       if (googleSignInAccount != null) {
//         final GoogleSignInAuthentication googleSignInAuthentication =
//             await googleSignInAccount.authentication;

//         final AuthCredential credential = GoogleAuthProvider.credential(
//           idToken: googleSignInAuthentication.idToken,
//           accessToken: googleSignInAuthentication.accessToken,
//         );

//         final UserCredential userCredential =
//             await _auth.signInWithCredential(credential);

//         final User? user = userCredential.user;

//         if (User != null) {
//           UserModel userModel = UserModel(
//               uId: user!.uid,
//               username: user.displayName.toString(),
//               email: user.email.toString(),
//               phone: user.phoneNumber.toString(),
//               userImg: user.photoURL.toString(),
//               userDeviceToken: getdevicetoken.DeviceToken.toString(),
//               country: '',
//               userAddress: '',
//               street: '',
//               isAdmin: false,
//               isActive: true,
//               createdOn: DateTime.now(),
//               city: '');

//           FirebaseFirestore.instance
//               .collection('User')
//               .doc(user.uid)
//               .set(userModel.toMap());
//           Get.offAll(Selectboard());
//         }
//       }
//     } catch (e) {
//       Get.snackbar("Error", e.toString());
//     }
//   }
// }

// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:onlinelearningapp/Controller/getdevicetoken.dart';
import 'package:onlinelearningapp/Screens/StudentScreens/SelectBoard.dart';

import '../Model/UserModel.dart';

class siginGoogleController extends GetxController {
  final Getdevicetoken getdevicetoken = Get.put(Getdevicetoken());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> GoogleSiginMethod() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        final UserCredential userCredential =
            await _auth.signInWithCredential(credential);

        final User? user = userCredential.user;

        if (user != null) {
          UserModel userModel = UserModel(
              uId: user.uid,
              username: user.displayName ?? 'No Name',
              email: user.email ?? 'No Email',
              phone: user.phoneNumber ?? 'No Phone',
              userImg: user.photoURL ?? 'No Image',
              userDeviceToken: getdevicetoken.DeviceToken ?? 'No Device Token',
              country: '',
              userAddress: '',
              street: '',
              isAdmin: false,
              isActive: true,
              createdOn: DateTime.now(),
              city: '');

          FirebaseFirestore.instance
              .collection('User')
              .doc(user.uid)
              .set(userModel.toMap(), SetOptions(merge: true));
          Get.offAll(Selectboard());
        }
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
