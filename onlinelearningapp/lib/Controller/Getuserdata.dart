// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class GetuserdataController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<QueryDocumentSnapshot<Object?>>> Getdata(String uId) async {
    final QuerySnapshot userData =
        await _firestore.collection('User').where('Uid', isEqualTo: uId).get();

    return userData.docs;
  }
}
