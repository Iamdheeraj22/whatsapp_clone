import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class ProfileInfoPage extends StatefulWidget {
  ProfileInfoPage({Key? key}) : super(key: key);
  @override
  State<ProfileInfoPage> createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends State<ProfileInfoPage> {
  var profileImage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Profile Info",
            style: TextStyle(
              color: Colors.teal,
            ),
          )),
      body: Container(
          child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customBox(height: 15),
              Center(
                  child: Text(
                      "Please provide your name and an optional profile photo")),
              customBox(height: 35),
              Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: profileImage.isEmpty ? Colors.black26 : null),
                  child: profileImage.isEmpty
                      ? Center(
                          child: Icon(
                          Icons.camera_alt,
                          size: 50,
                          color: Colors.white,
                        ))
                      : Image.file(File(profileImage))),
              customBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [],
                ),
              )
            ],
          ),
          
        ],
      )),
    );
  }
}
