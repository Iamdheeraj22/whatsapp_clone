import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class LiveLocationPage extends StatefulWidget {
  LiveLocationPage({Key? key}) : super(key: key);

  @override
  State<LiveLocationPage> createState() => _LiveLocationPageState();
}

class _LiveLocationPageState extends State<LiveLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          "Live Location",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          height: phoneHeight(context),
          width: phoneWidth(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                customBox(height: 15),
                Image.asset(
                  "assets/location.png",
                  height: 150,
                  width: 150,
                ),
                customBox(height: 10),
                const Text(
                  "You aren't sharing live location in any chats.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                customBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Live location requires background location. You can manage this in your devie settings.",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
