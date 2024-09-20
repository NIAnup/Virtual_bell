import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:virtual.bell/widget_bg/appbar_Screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
  }
 final List images = [
  "assets/icons/tune.png",
  "assets/icons/privacy.png",
  "assets/icons/notifications.png",

   "assets/icons/darkmode.png"
 ];
final List name = [

  "General settings",
  "Privacy settings",
  "Notification preferences",
  "Appearance settings"
];

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        // backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

                50.heightBox,

                Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                ),
                20.heightBox,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),

                        blurRadius: 10,
                        // changes position of shadow
                      ),
                    ],
                  ),
                  child: ListTile(
                      leading:
                          Image.asset("assets/icons/person.png"),
                      title: Text(
                        "Account",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                      ),
                  ),
                ),

                20.heightBox,
                Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                  elevation: 1,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: ListView.separated(
                      itemCount: 4,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                            boxShadow: [
                            // BoxShadow(
                            //   color: Colors.black.withOpacity(0.1),
                            //
                            //   blurRadius: 10,
                            //   // changes position of shadow
                            // ),
                          ],
                        ),
                        child: ListTile(

                            leading: Image.asset(images[index]),
                            title: Text(
                              (name[index]),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            )),
                                              );
                      },
                      separatorBuilder: (context, index) =>
                          Divider(color: Colors.grey.shade200),
                    ),
                  ),
                ),

                20.heightBox,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),

                        blurRadius: 10,
                        // changes position of shadow
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading:
                        Image.asset("assets/icons/help.png"),
                    title: Text(
                      "Help section",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),

                        blurRadius: 10,
                        // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: ListTile(
                        leading:
                            Image.asset("assets/icons/Logout.png"),
                        title: Text(
                          "Log out",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                        )),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
