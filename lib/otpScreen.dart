import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:virtual.bell/login_firebase/login_firebase.dart';
import 'package:virtual.bell/widget_bg/bottom_navbar.dart';
import 'Components/AppColor.dart';
import 'package:firebase_core/firebase_core.dart';

class otpScreen extends StatefulWidget {
  final String verificationId;
  otpScreen({
    super.key,
    required this.verificationId,
  });
  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  final AuthController _controller = Get.find();
  TextEditingController _pinController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isButtonEnabled = false;
  bool isLoading = false;

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  void _checkButtonEnabled() {
    setState(() {
      _isButtonEnabled = _pinController.text.isNotEmpty;
    });
  }

  final defaultPinTheme = PinTheme(
    margin: EdgeInsets.all(10),
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 1),
      borderRadius: BorderRadius.circular(22),
    ),
  );

  late PinTheme focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: Colors.blue.shade700),
    borderRadius: BorderRadius.circular(6),
  );

  late PinTheme submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: Colors.white24,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,
      body: Stack(
        children: [
          // const Background(),
          // SafeArea(
          //   child: isLoading
          //       ? Center(child: CircularProgressIndicator())
          //       : SingleChildScrollView(
          //           child: Form(
          //             key: _formKey,
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 SizedBox(height: 200),
          //                 Padding(
          //                   padding: const EdgeInsets.only(
          //                     left: 20,
          //                     right: 20,
          //                   ),
          //                   child: Text(
          //                     "OTP Verification",
          //                     style: TextStyle(
          //                       fontWeight: FontWeight.w500,
          //                       fontSize: 30,
          //                       color: AppColors.black,
          //                     ),
          //                     ),
          //                    ),
          //                 50.heightBox,
          //
          //                 Padding(
          //                   padding: const EdgeInsets.all(10.0),
          //                   child: Center(
          //                     child: Pinput(
          //                       length: 4,
          //                       keyboardType: TextInputType.number,
          //                       controller: _pinController,
          //                       defaultPinTheme: defaultPinTheme,
          //                       focusedPinTheme: focusedPinTheme,
          //                       submittedPinTheme: submittedPinTheme,
          //                       onChanged: (value) {
          //                         _checkButtonEnabled();
          //                       },
          //                       validator: (value) {
          //                         if (value!.isEmpty) {
          //                           return 'Please enter username';
          //                         }
          //                         return null;
          //                       },
          //                       textInputAction: TextInputAction.next,
          //                       showCursor: true,
          //                       onCompleted: null,
          //                     ),
          //                   ),
          //                 ),
          //
          //                 10.heightBox,
          //                 InkWell(
          //                   onTap: () {
          //                     Get.to(BottomNavBar());
          //                   },
          //                   // onTap: _isButtonEnabled
          //                   //     ? () {
          //                   //   if (_formKey.currentState!.validate()) {
          //                   //
          //                   //
          //                   //     // Navigator.of(
          //                   //     //   context,
          //                   //     //
          //                   //     //     MaterialPageRoute(
          //                   //     //       builder: (context) => SignUpScreen(
          //                   //     //       device: widget.device,
          //                   //     //       mobile:widget.mobile,
          //                   //     //       userotp: _pinController.text.toString(),
          //                   //     //     ),
          //                   //     //   ),
          //                   //     // );
          //                   //
          //                   //   }
          //                   // }
          //                   //     : null,
          //                   child: Padding(
          //                     padding: const EdgeInsets.only(
          //                         left: 25, right: 25, top: 20.0),
          //                     child: Container(
          //                       height: 50,
          //                       width: MediaQuery.of(context).size.width,
          //                       decoration: BoxDecoration(
          //                       color: AppColors.black,
          //                           borderRadius: BorderRadius.circular(22),
          //                       ),
          //                       child: Center(
          //                         child: Text(
          //                           'Verify',
          //                           style: TextStyle(
          //                               color: AppColors.lightGrey,
          //                               fontWeight: FontWeight.bold,
          //                               fontSize: 17),
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          // ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 200.0),
            child: Column(
              children: [
                Align(
                  child: Text(
                    'OTP Verification',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: AppColors.black,
                    ),
                  ),
                ),
                Text(
                  'Please enter the otp',
                  style: TextStyle(color: AppColors.black, fontSize: 13),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // const SizedBox(height: 0),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Pinput(
                                length: 4,
                                keyboardType: TextInputType.number,
                                controller: _pinController,
                                defaultPinTheme: defaultPinTheme,
                                focusedPinTheme: focusedPinTheme,
                                submittedPinTheme: submittedPinTheme,
                                onChanged: (value) {
                                  _checkButtonEnabled();
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                textInputAction: TextInputAction.next,
                                showCursor: true,
                                onCompleted: null,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  20.heightBox,
                  InkWell(
                    onTap: () {
                      _controller.sendotp(_pinController.text.trim());
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 30, left: 30, top: 20.0),
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
          ),
        ],
      ),
    );
  }
}
