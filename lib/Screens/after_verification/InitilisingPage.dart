import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class InitialisingPage extends StatefulWidget {
  InitialisingPage({Key? key}) : super(key: key);

  @override
  State<InitialisingPage> createState() => _InitialisingPageState();
}

class _InitialisingPageState extends State<InitialisingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Column(
          children: [
            Text("Initiliasing....",
                style: TextStyle(fontSize: 20, color: Colors.teal)),
            customBox(height: 10),
            Text("Please wait a moment",
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            customBox(height: 70),
            Center(
              child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Image.asset(
                    "assets/bg.png",
                    color: Colors.greenAccent[700],
                    height: 340,
                    width: 340,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
