import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/LoginPage.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        customBox(height: 70),
        Center(
          child: Text(
            "Welcome to Whatsapp",
            style: TextStyle(
                fontSize: 30,
                color: Colors.greenAccent[700],
                fontWeight: FontWeight.bold),
          ),
        ),
        customBox(height: phoneHeight(context) / 10),
        Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Image.asset(
              "assets/bg.png",
              color: Colors.greenAccent[700],
              height: 340,
              width: 340,
            )),
        customBox(height: 50),
        Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Center(
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(style: TextStyle(color: Colors.grey), children: [
                  TextSpan(text: "Agree and continue to accept the"),
                  TextSpan(
                      text: " Whatsapp Terms of service and privcy policy",
                      style: TextStyle(color: Colors.cyan))
                ])),
          ),
        ),
        customBox(height: 20),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPageScreen()));
          },
          child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(color: Colors.greenAccent[400]),
              width: phoneWidth(context) - 110,
              child: Text(
                "AGREE AND CONTINUE",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
        )
      ]),
    ));
  }
}
