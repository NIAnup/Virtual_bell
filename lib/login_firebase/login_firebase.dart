import 'package:firebase_auth/firebase_auth.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../otpScreen.dart';
import '../widget_bg/bottom_navbar.dart';

class AuthController extends GetxController {
  var mobilecontroller = TextEditingController();
  // String? selectcountryCode;
  String? verificationid;
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> phoneNumberAuth(String selectcountryCode) async {
    final String phone =
        "${selectcountryCode.toString()}${mobilecontroller.text.trim()}";
    await auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.code.toString());
        },
        codeSent: (String? verificationId, int? resendIdToken) {
          this.verificationid = verificationId;
          Get.to(otpScreen(
            verificationId: verificationid!,
          ));
        },
        timeout: Duration(seconds: 60),
        codeAutoRetrievalTimeout: (String verificationId) {
          this.verificationid = verificationId;
        });
  }

  Future<void> sendotp(String otpcontroller) async {
    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: verificationid!, smsCode: otpcontroller);
    try {
      UserCredential userCredential =
          await auth.signInWithCredential(phoneAuthCredential);
      if (userCredential.user != null) {
        Get.to(BottomNavBar());
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
