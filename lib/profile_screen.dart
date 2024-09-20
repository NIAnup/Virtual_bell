import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:virtual.bell/user_profile.dart';
import 'package:virtual.bell/widget_bg/appbar_Screen.dart';
import 'Components/AppColor.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

TextEditingController _searchController = TextEditingController();
List<Color> colorsList = [
  Colors.green,
  Colors.red,
  Colors.green,
  Colors.green,
  Colors.red,
  Colors.red,
  Colors.green,
  Colors.green,
  Colors.red,
  Colors.green,
];
List<String> Names = [
  "Anamika",
  "Monika",
  "Priyanka",
  "Damini",
  "Ginni",
  "Sushma",
  "Diksha",
  "Ritu",
  "Ginni",
  "Sushma",
];

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(height * 0.06),
      //   child: AppbarScreen(),
      // ),
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Appbar(),
            10.heightBox,
            Card(
              child: Container(
                // height:height*0.06,
                decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: TextField(
                    cursorColor: AppColors.black,
                    controller: _searchController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search here....",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      border: OutlineInputBorder(
                        // borderSide:
                        // BorderSide(width: 1, color: Colors.black),
                        borderSide: BorderSide.none,
                        // borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35)),
                      elevation: 1,
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                            child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        )),
                        height: 70,
                        width: 70,
                      ),
                    ),
                    Text(
                      "New",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Container(
                  height: 110,
                  width: width * 0.75,
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
                                radius: 35,
                              ),
                            ),
                            Text(
                              Names[index],
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
            buildListView(),
          ]),
        ),
      ),
    );
  }

  Widget buildListView() {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(UserProfile());
            },
            child: Container(
              height: height * 0.09,
              width: width * 0.50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),

                    blurRadius: 6,
                    // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2023/02/01/13/52/ai-generated-7760505_1280.jpg"),
                    radius: 35,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        (Names[index]),
                        style: Theme.of(context).textTheme.titleMedium,
                        // style: const TextStyle(
                        //     fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.5),
                                color: colorsList[index]),
                          ),
                          10.widthBox,
                          Text(
                            "2 min ago",
                            style: Theme.of(context).textTheme.titleSmall,
                            // style: TextStyle(
                            //     fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          Image.asset(
                            "assets/icons/notification.png",
                            height: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) =>
            Divider(color: Colors.transparent),
      ),
    );
  }
}
