import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    // Get.changeTheme(isDarkMode.value ? ThemeData.dark() : ThemeData.light());
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark()) ;
     }
   }

//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class ThemeController extends GetxController {
//   RxBool isDarkMode = false.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     loadTheme();
//   }
//
//   void toggleTheme() async {
//     isDarkMode.value = !isDarkMode.value;
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool('isDarkMode', isDarkMode.value);
//   }
//
//   void loadTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     isDarkMode.value = prefs.getBool('isDarkMode') ?? false;
//   }
// }
