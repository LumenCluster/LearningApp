// // ignore_for_file: use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names

// import 'package:get/get.dart';

// class ButtonController extends GetxController {
//   var isOlevelselected = false.obs;
//   var isAlevelselected = false.obs;

//   void Olevel() {
//     isOlevelselected.value = true;
//     isAlevelselected.value = false;
//   }

//   void Alevel() {
//     isOlevelselected.value = false;
//     isAlevelselected.value = true;
//   }
// }

import 'package:get/get.dart';

class ButtonController extends GetxController {
  // Variable to store the index of the selected button
  var selectedButtonIndex = 0.obs; // Default to the first button

  void selectButton(int index) {
    selectedButtonIndex.value = index; // Update the selected button index
  }
}
