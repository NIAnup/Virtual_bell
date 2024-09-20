import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual.bell/Introductionpage.dart';
import 'package:virtual.bell/firebase_options.dart';
import 'package:virtual.bell/theme/custom_theme/appbar_theme.dart';
import 'package:virtual.bell/theme/theme.dart';
import 'package:virtual.bell/widget_controller/theme_conroller.dart';

import 'userForm Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // theme: ThemeData.light(),
        // theme: TextTheme. ,
        // darkTheme: ThemeData.dark(),
        theme: themeController.isDarkMode.value
            ? TAppTheme.darkTheme
            : TAppTheme.lightTheme,
// darkTheme: TAppTheme,
//         theme: TAppTheme.lightTheme,
        home: const IntroductionPage(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:virtual.bell/SplashScreen.dart';
// import 'Login_Screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const Splashscreen(),
//     );
//   }
// }
