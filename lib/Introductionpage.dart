import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:virtual.bell/Components/AppColor.dart';
import 'package:virtual.bell/Login_Screen.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffd3d3cb),
      body: Stack(children: [
        Container(
          child: Image.asset(
            'assets/images/bgImage.png',
            fit: BoxFit.fill,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
        Positioned(
          bottom: 100,
          right: 30,
          left: 30,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(MyLogin());
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // border: Border.all(width: 1, color: Colors.black38)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.login_outlined,
                              color: Colors.white,
                            ),
                            // Image.asset('assets/icons/Icon system update.png'),
                            20.widthBox,
                            const Text(
                              'Login with Phone Number',
                              style: TextStyle(
                                  color: AppColors.lightGrey, fontSize: 18),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              20.heightBox,
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/icons/googleicon.png',
                            height: 30,
                          ),
                          // Spacer(),
                          // 20.widthBox,
                          Text(
                            'Login with Google',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
