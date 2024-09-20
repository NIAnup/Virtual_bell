import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:virtual.bell/theme/theme.dart';
import '../dashboard_screen.dart';
import '../widget_controller/theme_conroller.dart';

// class AppbarScreen extends StatelessWidget {
//   AppbarScreen({super.key});
//   final ThemeController themeController = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return AppBar(
//       backgroundColor: Colors.white,
//       automaticallyImplyLeading: false,
//       title: InkWell(
//         onTap: () {
//           Get.to(DashboardScreen());
//           },
//           child: CircleAvatar(
//           radius: 25,
//               backgroundImage: NetworkImage(
//               "https://cdn.pixabay.com/photo/2023/02/01/13/52/ai-generated-7760505_1280.jpg"),
//                   ),
//         ),
//       actions: [
//         Row(
//           children: [
//             Image.asset(
//               "assets/icons/chat.png",
//               height: 30,
//             ),
//             20.widthBox,
//             Obx(
//               () => Padding(
//                 padding: const EdgeInsets.only(right: 8.0),
//                 child: Switch(
//                   // value: themeController,
//                   // value: themeController.isDarkMode.value
//                   //             ? TAppTheme.darkTheme
//                   //             : TAppTheme.lightTheme,
//                   value: themeController.isDarkMode.value,
//                   onChanged: (value) {
//                     themeController.toggleTheme();
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
// }
//
// bool status = false;
// bool isSwitchOn = false;





Widget Appbar(){
  final ThemeController themeController = Get.find();
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap: () {
          Get.to(DashboardScreen());
        },
        child: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
              "https://cdn.pixabay.com/photo/2023/02/01/13/52/ai-generated-7760505_1280.jpg"),

        ),
      ),
      Row(
        children: [
          Image.asset(
            "assets/icons/chat.png",
            height: 30,
          ),
          20.widthBox,
          Obx(
                () => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Switch(
                // value: themeController,
                // value: themeController.isDarkMode.value
                //             ? TAppTheme.darkTheme
                //             : TAppTheme.lightTheme,
                value: themeController.isDarkMode.value,
                onChanged: (value) {
                  themeController.toggleTheme();
                },
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

