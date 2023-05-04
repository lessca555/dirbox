import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

import '../../sign_in/views/sign_in_view.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //bg
            Container(
                width: Get.width,
                child: Image.asset("assets/img/bg.png", fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 135),
                  Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/img/pic1.png",
                        fit: BoxFit.contain,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome to ",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Staycationista",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Text(
                        "Not sure where to go? want to get intimate time with your lover? afraid of police knocking your boarding room's door cuz you're dating minor?\nWe are your solution!\nBook a room and get your privacy's safe, no leak and guarantee 100%, insane?! i know, im not sure eaither!\n\nJoin For Free.",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/finger.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Smart Id",
                                  style: TextStyle(color: Color(0xFF567DF4)))
                            ]),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 50),
                            backgroundColor: Color(0xFFEEF7FE),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        )
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(SignInView());
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Sign in",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(Icons.arrow_forward)
                            ]),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 50),
                          backgroundColor: Color(0xFF567DF4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: Text("Use social Login")),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset("assets/icons/twt.png"),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset("assets/icons/fb.png"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(child: Text("Create an account")),
                ],
              ),
            )
          ],
        ));
  }
}
