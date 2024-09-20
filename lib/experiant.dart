// import 'package:flutter/material.dart';
// class experiment extends StatelessWidget {
//   const experiment({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             height: height * 0.50,
//             color: Colors.black,
//             child: Center(
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Positioned(
//                     // left: 30,
//                     bottom: 30,
//                     child: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
//                       radius: 20,
//                     ),
//                   ),
//                   CircleAvatar(
//                     backgroundImage: NetworkImage(
//                         "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
//                     radius: 20,
//                   ),
//                   CircleAvatar(
//                     backgroundImage: NetworkImage(
//                         "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
//                     radius: 20,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Experiment extends StatelessWidget {
  const Experiment({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          //   Container(
          //   height: height * 0.50,
          //   color: Colors.black,
          //   child: Center(
          //     child: Stack(
          //       alignment: Alignment.center,
          //       children: [
          //         Positioned(
          //           bottom: 30,
          //           left: width * 0.50,
          //           child: CircleAvatar(
          //             backgroundImage: NetworkImage(
          //                 "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
          //             radius: 30,
          //           ),
          //         ),
          //         Positioned(
          //           top: 100,
          //           child: CircleAvatar(
          //             backgroundImage: NetworkImage(
          //                 "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
          //             radius: 30,
          //           ),
          //         ),
          //         Positioned(
          //           bottom: 100,
          //           right: width * 0.45,
          //           child: CircleAvatar(
          //             backgroundImage: NetworkImage(
          //                 "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
          //             radius: 30,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children:[
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 50.0,left: 20),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
                                radius: 20,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 58.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
                                radius: 20,
                              ),
                            ),

                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
                              radius: 20,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text("Label $index"),
                      ],
                    ),
                  );
                }),
              ),
            ),
        ],
      ),
    );
  }
}
