import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class GroupProfile extends StatelessWidget {
  GroupProfile({super.key});

  List name = [
    "Medha(Admin)",
    "Utkarsh",
    "Work",
  ];

  List name11 = [
    "online",
    "12 min ago",
    "yesterday",
  ];

  List<Color> colorsList = [
    Colors.green,
    Colors.red,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.message_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // CircleAvatar(
              //   backgroundImage: NetworkImage(
              //       "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
              //   radius: 60,
              // ),

              const Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 60.0, left: 30),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 63.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
                      radius: 30,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
                    radius: 30,
                  ),
                ],
              ),
                const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Development Group',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                    ),

                  Icon(Icons.notification_add),
                ],
               ),
              const Text("For development work"),
              50.heightBox,
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Members',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                  ],
                ),
              ),
              20.heightBox,
              buildListView(BuildContext, context),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.black),
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10.0),
                  child: Text(
                    "Add Member+",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListView(BuildContext, context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.separated(
        itemCount: 3,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return InkWell(
            // onTap: (){
            //   Get.to(GroupProfile());
            // },
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
                        name[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
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
                            name11[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
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
