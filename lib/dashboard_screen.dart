import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:virtual.bell/widget_controller/dashboard_controller.dart';
import 'components/AppColor.dart';
import 'experiant.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  final DashboardController controller = Get.put(DashboardController());
  final List name = [
    "Belled in SEO",
    "Joined the Marketing group",
    "Updated profile picture",
    "Missed bell from Utkarsh"
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Profile"),
            InkWell(
              onTap: () {
                // Get.to(Experiment());
              },
              child: Container(
                decoration: BoxDecoration(color: Color(0xff4cd964)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 8, bottom: 8, right: 11, left: 11),
                  child: Text("Edit"),
                ),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2023/02/01/13/52/ai-generated-7760505_1280.jpg",
                            ),
                          ),
                          20.widthBox,
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Aryaan",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "aryan@example.com",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),

                      10.heightBox,
                      // Text("data"),
                      _buildUserInfoField(
                          context, "Full name", controller.usernameController),
                      10.heightBox,
                      _buildUserInfoField(
                          context, "Phone", controller.phoneController,
                          keyboardType: TextInputType.phone),
                      10.heightBox,
                      _buildUserInfoField(
                          context, "Email ID", controller.phoneController,
                          keyboardType: TextInputType.phone),
                      10.heightBox,

                      _buildUserInfoField(
                          context, "Status", controller.passwordController,
                          obscureText: true),
                    ],
                  ),
                ),
              ),
              50.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Activity History",
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: height * 0.04,
                      child: ListTile(
                          // leading: Image.asset(images[index]),
                          title: Text(
                            "10:20 am",
                            // (name[index]),
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          trailing: Text(
                            name[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          )),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 0)
                  // Divider(color: Colors.transparent),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfoField(
      BuildContext context, String label, TextEditingController controller,
      {TextInputType keyboardType = TextInputType.text,
      bool obscureText = false}) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          // width: width * 0.15,
          // height: height * 0.03,
          // color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              label,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        // Text(label),
        // 10.heightBox,
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          elevation: 1,
          color: Colors.white,
          child: Container(
            width: width * .90,
            height: height * 0.06,
            // color: AppColors.black,
            child: TextField(
              cursorColor: AppColors.black,
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none
                    // borderSide: const BorderSide(width: 1.5, color: Colors.black12),
                    ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                filled: true,
                fillColor: Colors.transparent,
                labelStyle: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38,
                ),
                hintText: label,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                hintStyle: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              inputFormatters: label == "Phone"
                  ? [
                      LengthLimitingTextInputFormatter(10),
                    ]
                  : null,
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:velocity_x/velocity_x.dart';
//
// import 'Components/AppColor.dart';
//
// class DashboardScreen extends StatefulWidget {
//   const DashboardScreen({super.key});
//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }
//
// class _DashboardScreenState extends State<DashboardScreen> {
//   TextEditingController _mobileController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text("Profile"),
//             Container(
//               decoration: BoxDecoration(color: Colors.green.shade400),
//               child: const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text("Edit"),
//               ),
//             ),
//           ],
//         ),
//         automaticallyImplyLeading: false,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(6.0),
//         child: Column(
//           children: [
//             Card(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(2)),
//               elevation: 1,
//               // color: Colors.green,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             CircleAvatar(
//                               radius: 25,
//                               backgroundImage: NetworkImage(
//                                   "https://cdn.pixabay.com/photo/2023/02/01/13/52/ai-generated-7760505_1280.jpg"),
//                             ),
//                             20.widthBox,
//                             Column(crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text("Aryaan",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500,),),
//                                 Text("aryan@eamaple.com")
//
//                               ],
//                             ),
//
//
//                           ],
//                         ),
//                         30.heightBox,
//                         Row(
//                           children: [
//                             Text("UserName"),
//                             Expanded(
//                               child: TextField(
//                                 cursorColor: AppColors.black,
//                                 controller: _mobileController,
//                                 keyboardType: TextInputType.number,
//                                 textInputAction: TextInputAction.done,
//                                 decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                         width: 1.5, color: Colors.black),
//                                     // borderRadius:
//                                     //     BorderRadius.circular(15.0),
//                                   ),
//
//                                   contentPadding: const EdgeInsets.symmetric(
//                                       horizontal: 20, vertical: 10),
//                                   filled: true,
//                                   fillColor: Colors.transparent,
//                                   // fillColor: AppColors.lightGrey,
//                                   labelStyle: GoogleFonts.roboto(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Colors.black38,
//                                   ),
//                                   hintText: "Mobile Number",
//                                   border: OutlineInputBorder(
//                                     borderSide:
//                                     BorderSide.none,
//                                     //   borderSide: BorderSide.none,
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   // prefix: Padding(
//                                   //   padding: const EdgeInsets.only(right: 8.0),
//                                   //   child: Text("+91"),
//                                   // ),
//
//                                   hintStyle: GoogleFonts.roboto(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 inputFormatters: [
//                                   LengthLimitingTextInputFormatter(10),
//                                 ],
//                                 style: GoogleFonts.roboto(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 15,
//                                 ),
//                               ),
//                             ),
//
//                           ],
//
//                         ),
//                         Row(
//                           children: [
//                             Text("UserName"),
//                             Expanded(
//                               child: TextField(
//                                 cursorColor: AppColors.black,
//                                 controller: _mobileController,
//                                 keyboardType: TextInputType.number,
//                                 textInputAction: TextInputAction.done,
//                                 decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                         width: 1.5, color: Colors.black),
//                                     // borderRadius:
//                                     //     BorderRadius.circular(15.0),
//                                   ),
//
//                                   contentPadding: const EdgeInsets.symmetric(
//                                       horizontal: 20, vertical: 10),
//                                   filled: true,
//                                   fillColor: Colors.transparent,
//                                   // fillColor: AppColors.lightGrey,
//                                   labelStyle: GoogleFonts.roboto(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Colors.black38,
//                                   ),
//                                   hintText: "Mobile Number",
//                                   border: OutlineInputBorder(
//                                     borderSide:
//                                     BorderSide.none,
//                                     //   borderSide: BorderSide.none,
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   // prefix: Padding(
//                                   //   padding: const EdgeInsets.only(right: 8.0),
//                                   //   child: Text("+91"),
//                                   // ),
//
//                                   hintStyle: GoogleFonts.roboto(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 inputFormatters: [
//                                   LengthLimitingTextInputFormatter(10),
//                                 ],
//                                 style: GoogleFonts.roboto(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 15,
//                                 ),
//                               ),
//                             ),
//
//                           ],
//
//                         ),
//                         Row(
//                           children: [
//                             Text("UserName"),
//                             Expanded(
//                               child: TextField(
//                                 cursorColor: AppColors.black,
//                                 controller: _mobileController,
//                                 keyboardType: TextInputType.number,
//                                 textInputAction: TextInputAction.done,
//                                 decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                         width: 1.5, color: Colors.black),
//                                     // borderRadius:
//                                     //     BorderRadius.circular(15.0),
//                                   ),
//
//                                   contentPadding: const EdgeInsets.symmetric(
//                                       horizontal: 20, vertical: 10),
//                                   filled: true,
//                                   fillColor: Colors.transparent,
//                                   // fillColor: AppColors.lightGrey,
//                                   labelStyle: GoogleFonts.roboto(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Colors.black38,
//                                   ),
//                                   hintText: "Mobile Number",
//                                   border: OutlineInputBorder(
//                                     borderSide:
//                                     BorderSide.none,
//                                     //   borderSide: BorderSide.none,
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   // prefix: Padding(
//                                   //   padding: const EdgeInsets.only(right: 8.0),
//                                   //   child: Text("+91"),
//                                   // ),
//
//                                   hintStyle: GoogleFonts.roboto(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 inputFormatters: [
//                                   LengthLimitingTextInputFormatter(10),
//                                 ],
//                                 style: GoogleFonts.roboto(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 15,
//                                 ),
//                               ),
//                             ),
//
//                           ],
//
//                         ),
//                         Row(
//                           children: [
//                             Text("UserName"),
//                             Expanded(
//                               child: TextField(
//                                 cursorColor: AppColors.black,
//                                 controller: _mobileController,
//                                 keyboardType: TextInputType.number,
//                                 textInputAction: TextInputAction.done,
//                                 decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                         width: 1.5, color: Colors.black),
//                                     // borderRadius:
//                                     //     BorderRadius.circular(15.0),
//                                   ),
//
//                                   contentPadding: const EdgeInsets.symmetric(
//                                       horizontal: 20, vertical: 10),
//                                   filled: true,
//                                   fillColor: Colors.transparent,
//                                   // fillColor: AppColors.lightGrey,
//                                   labelStyle: GoogleFonts.roboto(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Colors.black38,
//                                   ),
//                                   hintText: "Mobile Number",
//                                   border: OutlineInputBorder(
//                                     borderSide:
//                                     BorderSide.none,
//                                     //   borderSide: BorderSide.none,
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   // prefix: Padding(
//                                   //   padding: const EdgeInsets.only(right: 8.0),
//                                   //   child: Text("+91"),
//                                   // ),
//
//                                   hintStyle: GoogleFonts.roboto(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w400,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 inputFormatters: [
//                                   LengthLimitingTextInputFormatter(10),
//                                 ],
//                                 style: GoogleFonts.roboto(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 15,
//                                 ),
//                               ),
//                             ),
//
//                           ],
//
//                         ),
//                       ],
//                     ),
//
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }