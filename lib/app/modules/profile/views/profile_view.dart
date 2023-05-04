import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF1F1F1),
        appBar: AppBar(
          backgroundColor: Color(0xFFF1F1F1),
          iconTheme: IconThemeData(color: Color(0xFF22215B)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          title: Text(
            'My Profile',
            style: TextStyle(color: Color(0xFF22215B)),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/img/pp.png",
                        fit: BoxFit.cover,
                        width: 75,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Christian Samuel Seputra",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("FrontEnd Devoloper"),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF22215B).withOpacity(0.6),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Color(0xFFFF317B),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "VVVIP",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Folder",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/add.png"),
                        Image.asset("assets/icons/sett.png"),
                        Image.asset("assets/icons/arr_right.png")
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardFolder(
                    title: "History Booked",
                    date: "Last update: April 15.2023",
                    color: Color(0xffEEF7FE),
                    image: Image.asset("assets/icons/folder_blue.png"),
                  ),
                  CardFolder(
                    title: "Favorite Hotel",
                    date: "Last update: December 15.2022",
                    color: Color(0xffFFFBEC),
                    image: Image.asset("assets/icons/folder_yellow.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardFolder(
                    title: "Vouchers",
                    date: "Last update: April 13.2023",
                    color: Color(0xffFEEEEE),
                    image: Image.asset("assets/icons/folder_red.png"),
                  ),
                  CardFolder(
                    title: "Transaction",
                    date: "Last update: April 15.2023",
                    color: Color(0xffF0FFFF),
                    image: Image.asset("assets/icons/folder_green.png"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 75,
                    child: Image.asset("assets/icons/sort.png"),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class CardFolder extends StatelessWidget {
  const CardFolder({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image
  }) : super(key: key);

  final String title;
  final String date;
  final Color color; 
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          SizedBox(height: 15,),
          Text(title, style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5,),
          Text(date, style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
