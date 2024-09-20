import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
//
// class UserProfile extends StatelessWidget {
//   const UserProfile({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Column(children: [
//
//       ],),
//     );
//   }
// }


class UserProfile extends StatelessWidget {
  UserProfile({super.key});
  List namelist=[
    "Medha(Admin)",
    "Utkarsh",
    "Shiv",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.message_outlined),
          ),
         ],
        ),
        body: Padding(
         padding: const EdgeInsets.all(10.0),
          child: Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/premium-photo/young-asian-beauty-woman-curly-long-hair-with-korean-makeup-style-face-perfect-clean-skin_883241-4671.jpg"),
                radius: 60,
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Aryaan Tiwari',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  // 20.widthBox,
                  Icon(Icons.notification_add),
                ],
              ),
              Text("+91 8833667788"),
              Text("Do not Disturb"),
              50.heightBox,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Common Group',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                  ],
                ),
              ),
              20.heightBox,
              buildListView(BuildContext,context),

            ],
          ),
        ),
      ),
    );
  }
  Widget buildListView(BuildContext,context) {
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
              height: height*0.09,
              width: width*0.50,
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
                    backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2023/02/01/13/52/ai-generated-7760505_1280.jpg"),
                    radius: 35,

                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        namelist[index],
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
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
