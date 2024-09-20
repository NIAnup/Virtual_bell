import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:virtual.bell/Components/AppColor.dart';
import 'package:virtual.bell/dashboard_screen.dart';
import 'package:virtual.bell/group_Screen.dart';
import 'package:virtual.bell/profile_screen.dart';
import 'package:virtual.bell/setting_Screen.dart';
import 'package:virtual.bell/widget_controller/bottomnav_controller.dart';
import '../home_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key, this.title}) : super(key: key);
  final String? title;
  final BottomnavController bottomnavController =
      Get.put(BottomnavController());
  bool status = false;
  bool isSwitchOn = false;
  final List<Widget> _screens = [
    SettingScreen(),
    ProfileScreen(),
    HomeScreen(),
    GroupScreen(),
    DashboardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     automaticallyImplyLeading: false,
      //     title: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         CircleAvatar(
      //           radius: 25,
      //           backgroundImage: NetworkImage(
      //               "https://cdn.pixabay.com/photo/2023/02/01/13/52/ai-generated-7760505_1280.jpg"),
      //         ),
      //         Row(
      //           children: [
      //             Image.asset(
      //               "assets/icons/chat.png",
      //               height: 30,
      //             ),
      //             10.widthBox,
      //             FlutterSwitch(
      //               activeColor: Colors.green,
      //               width: 50.0,
      //               height: 30.0,
      //               valueFontSize: 10.0,
      //               toggleSize: 15.0,
      //               value: status,
      //               borderRadius: 30.0,
      //               padding: 8.0,
      //               showOnOff: true,
      //               onToggle: (val) {
      //                 // setState(() {
      //                 //   status = val;
      //                 // });
      //               },
      //             ),
      //           ],
      //         )
      //       ],
      //     )),
           body: Obx(
           () => IndexedStack(
           index: bottomnavController.selectionIndex.value,
          children: _screens,
          ),
        ),
        bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Home",
        useSafeArea: true,
        labels: ["Setting", "Users", "Home", "Group", "Profile"],
        icons: [
          Icons.room_preferences_rounded,
          Icons.person,
          Icons.home_work_sharp,
          Icons.people_alt,
          Icons.account_circle,
        ],
        // badges: [
        //  Image.asset('assets/icons/roompreferences.png'),
        //
        //   Image.asset('assets/icons/roompreferences.png'),
        //   Image.asset('assets/icons/roompreferences.png'),
        //   Image.asset('assets/icons/roompreferences.png'),
        //   Image.asset('assets/icons/roompreferences.png'),
        // ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.black,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.white,
        tabIconSelectedColor: Colors.black,
        tabBarColor: Colors.white,
        onTabItemSelected: (index) {
          bottomnavController.changeIndex(index);
        },
      ),
    );
  }
}

// // bottomnav_controller.dart
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class BottomnavController extends GetxController {
//   var selectionIndex = 0.obs;
//
//   void changeIndex(int index) {
//     selectionIndex.value = index;
//   }
// }

// class MainPageContentComponent extends StatelessWidget {
//   const MainPageContentComponent({
//     required this.title,
//     required this.controller,
//     Key? key,
//   }) : super(key: key);
//   final String title;
//   final MotionTabBarController controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 50),
//           const Text('Go to "X" page programmatically'),
//           const SizedBox(height: 10),
//           ElevatedButton(
//             onPressed: () => HomeScreen(device: '',),
//             child: const Text('Home'),
//           ),
//           ElevatedButton(
//             onPressed: () => controller.index = 1,
//             child: const Text('Setting'),
//           ),
//           ElevatedButton(
//             onPressed: () => controller.index = 2,
//             child: const Text('Profile'),
//           ),
//           ElevatedButton(
//             onPressed: () => controller.index = 3,
//             child: const Text('Group'),
//           ),
//           ElevatedButton(
//             onPressed: () => controller.index = 4,
//             child: const Text('Dashboard'),
//           ),
//         ],
//       ),
//     );
//   }
// }

//
//
//
// import 'package:flutter/material.dart';
// import 'package:motion_tab_bar/MotionBadgeWidget.dart';
// import 'package:motion_tab_bar/MotionTabBar.dart';
// import 'package:motion_tab_bar/MotionTabBarController.dart';
//
// class bottomNavBar extends StatefulWidget {
//   const bottomNavBar({Key? key, this.title}) : super(key: key);
//
//   final String? title;
//
//   @override
//   _bottomNavBarState createState() => _bottomNavBarState();
// }
//
// class _bottomNavBarState extends State<bottomNavBar> with TickerProviderStateMixin {
//   TabController? _tabController;
//   MotionTabBarController? _motionTabBarController;
//
//   @override
//   void initState() {
//     super.initState();
//        _tabController = TabController(
//       initialIndex: 1,
//       length: 5,
//       vsync: this,
//     );
//
//     //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
//     _motionTabBarController = MotionTabBarController(
//       initialIndex: 1,
//       length: 5,
//       vsync: this,
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _motionTabBarController!.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title!),
//       ),
//       bottomNavigationBar: MotionTabBar(
//         controller: _motionTabBarController,
//         initialSelectedTab: "Home",
//         useSafeArea: true,
//         labels: const ["Home", "setting", "Profile", "Group","Dashboard"],
//         icons: const [Icons.dashboard, Icons.home, Icons.people_alt, Icons.settings,Icons.dashboard],
//
//
//         badges: [
//
//           const MotionBadgeWidget(
//             text: '10+',
//             textColor: Colors.white,
//             color: Colors.red,
//             size: 18,
//           ),
//
//           // custom badge Widget
//           Container(
//             color: Colors.black,
//             padding: const EdgeInsets.all(2),
//             child: const Text(
//               '48',
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//
//           // allow null
//           null,
//
//           // Default Motion Badge Widget with indicator only
//           const MotionBadgeWidget(
//             isIndicator: true,
//             color: Colors.red, // optional, default to Colors.red
//             size: 5, // optional, default to 5,
//             show: true, // true / false
//           ),
//         ],
//         tabSize: 50,
//         tabBarHeight: 55,
//         textStyle: const TextStyle(
//           fontSize: 12,
//           color: Colors.black,
//           fontWeight: FontWeight.w500,
//         ),
//         tabIconColor: Colors.blue[600],
//         tabIconSize: 28.0,
//         tabIconSelectedSize: 26.0,
//         tabSelectedColor: Colors.blue[900],
//         tabIconSelectedColor: Colors.white,
//         tabBarColor: Colors.white,
//         onTabItemSelected: (int value) {
//           setState(() {
//             _motionTabBarController!.index = value;
//           });
//         },
//       ),
//       body: TabBarView(
//         physics: const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
//         controller: _motionTabBarController,
//         children: <Widget>[
//           MainPageContentComponent(title: "Home", controller: _motionTabBarController!),
//           MainPageContentComponent(title: "Setting", controller: _motionTabBarController!),
//           MainPageContentComponent(title: "Profile", controller: _motionTabBarController!),
//           MainPageContentComponent(title: "Group", controller: _motionTabBarController!),
//           MainPageContentComponent(title: "Dashboard", controller: _motionTabBarController!),
//         ],
//       ),
//     );
//   }
// }
//
// class MainPageContentComponent extends StatelessWidget {
//   const MainPageContentComponent({
//     required this.title,
//     required this.controller,
//     Key? key,
//   }) : super(key: key);
//   final String title;
//   final MotionTabBarController controller;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 50),
//           const Text('Go to "X" page programmatically'),
//           const SizedBox(height: 10),
//           ElevatedButton(
//             onPressed: () => controller.index = 0,
//             child: const Text('Home'),
//           ),
//           ElevatedButton(
//             onPressed: () => controller.index = 1,
//             child: const Text('Setting'),
//           ),
//           ElevatedButton(
//             onPressed: () => controller.index = 2,
//             child: const Text('Profile'),
//           ),
//           ElevatedButton(
//             onPressed: () => controller.index = 3,
//             child: const Text('Group'),
//           ),
//           ElevatedButton(
//             onPressed: () => controller.index = 4,
//             child: const Text('Dashboard'),
//           ),
//         ],
//       ),
//     );
//   }
// }
