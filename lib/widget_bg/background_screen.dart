import 'dart:math';

import 'package:flutter/material.dart';

import '../Components/AppColor.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Stack(
    children: [


      Positioned(
        left: 0,
        top: 0,
        child:
        ClipPath(
          clipper: CurvedBottomClipper(),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.appColor,
            //   gradient: LinearGradient(
            //   colors: [AppColors.appColor, AppColors.rewardColor], // Gradient colors
            //   begin: Alignment.topLeft, // Gradient start
            //   end: Alignment.bottomRight, // Gradient end
            // ),
            ),
            height: 250.0,
            width:MediaQuery.sizeOf(context).width,
            child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text(
                    "",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                )),
          ),
        ),

        // ClipRRect(
        //   borderRadius: BorderRadius.only(
        //     // topLeft: Radius.circular(32),
        //     bottomLeft: Radius.circular(0),
        //     bottomRight: Radius.circular(200),
        //   ),
        //   child: Container(
        //     height: 250,
        //     width:MediaQuery.sizeOf(context).width,
        //       color: AppColors.rewardColor,
        //   ),
        // ),
      ),

    ],
  );
}
class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final roundingHeight = size.height * 2 / 6;
    // this is top part of path, rectangle without any rounding
    final filledRectangle =
    Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);
    final roundingRectangle = Rect.fromLTRB(
        -5, size.height - roundingHeight * 2, size.width + 5, size.height);

    final path = Path();
    path.addRect(filledRectangle);
    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}



class Background1 extends StatelessWidget {
  const Background1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Positioned(
        left: 0,
        top: 0,
        child:
        ClipPath(
          clipper: CurvedBottomClipper1(),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.appColor,

            ),
            height: 250.0,
            width:MediaQuery.sizeOf(context).width,
            child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text(
                    "",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                )),
          ),
        ),


      ),


    ],
  );
}
class CurvedBottomClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final roundingHeight = size.height * 2 / 6;
    // this is top part of path, rectangle without any rounding
    final filledRectangle =
    Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);
    final roundingRectangle = Rect.fromLTRB(
        -5, size.height - roundingHeight * 2, size.width + 5, size.height);
    final path = Path();
    path.addRect(filledRectangle);
    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}