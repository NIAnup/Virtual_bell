import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:virtual.bell/Model/countrycode.dart';
import 'package:virtual.bell/login_firebase/login_firebase.dart';
import 'Components/AppColor.dart';
import 'otpScreen.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  AuthController authController = Get.put(AuthController());

  List<CountrycodeClass> countrycode = [CountrycodeClass("+91")];

  TextEditingController _mobileController = TextEditingController();
  String? selectcountryCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.appColor,
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          children: [
            // Background(),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Column(
                children: [
                  Align(
                    child: Text('Hi good to see you',
                        style: GoogleFonts.radioCanada(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Text('Please Enter Your Phone Number',
                      style: GoogleFonts.radioCanada(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Center(
                      child: DropdownButton(
                          hint: const Text("Select Country code"),
                          value: selectcountryCode,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectcountryCode = newValue;
                              log(selectcountryCode.toString());
                            });
                          },
                          items: countrycode.map<DropdownMenuItem<String>>(
                            (CountrycodeClass code) {
                              return DropdownMenuItem(
                                  value: code.code,
                                  child: Text('${code.code}'));
                            },
                          ).toList()),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        TextField(
                          cursorColor: AppColors.black,
                          controller: authController.mobilecontroller,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.5, color: Colors.black),
                              // borderRadius:
                              //     BorderRadius.circular(15.0),
                            ),

                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            filled: true,
                            fillColor: Colors.transparent,
                            // fillColor: AppColors.lightGrey,
                            labelStyle: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black38,
                            ),
                            hintText: "Mobile Number",
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.black),
                              //   borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefix: const Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Text("91"),
                            ),

                            hintStyle: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10),
                          ],
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  20.heightBox,
                  InkWell(
                    onTap: () {
                      // loginfuntion.phoneNumberAuth(
                      //     phoneNumber: _mobileController.text.trim());

                      authController.phoneNumberAuth(selectcountryCode!);
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 15, left: 15, top: 20.0),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: AppColors.black,
                          borderRadius: BorderRadius.circular(22),
                          // color: AppColors.rewardColor
                        ),
                        child: Center(
                          child: Text(
                            'Send OTP',
                            style: TextStyle(
                                color: AppColors.lightGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  40.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
