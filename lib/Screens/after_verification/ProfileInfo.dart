import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/after_verification/InitilisingPage.dart';

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
          child: SingleChildScrollView(
        child: Column(
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
                    ? const Center(
                        child: Icon(
                        Icons.camera_alt,
                        size: 50,
                        color: Colors.white,
                      ))
                    : Image.file(File(profileImage))),
            customBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              child: ListTile(
                  title: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.teal, width: 2)),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Type your name here",
                          border: InputBorder.none),
                    ),
                  ),
                  trailing: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black45,
                    size: 35,
                  )),
            ),
            InkWell(
              onTap: () {
                showContactsMediaDialog();
              },
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                margin: EdgeInsets.only(top: phoneHeight(context) / 2 - 80),
                decoration: BoxDecoration(
                    color: Colors.teal, borderRadius: BorderRadius.circular(7)),
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  showContactsMediaDialog() {
    showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              height: phoneHeight(context) / 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        color: Colors.teal,
                        height: 140,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.contacts,
                              color: Colors.white,
                              size: 50,
                            ),
                            customBox(width: 25),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 35,
                            ),
                            customBox(width: 25),
                            Icon(
                              Icons.folder,
                              color: Colors.white,
                              size: 60,
                            )
                          ],
                        )),
                    customBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contacts and media",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            customBox(height: 10),
                            Text(
                              "To easily send messages and photos to friends and family , allow whatsapp to access your contats, photos and other media.",
                              style: TextStyle(fontSize: 16, wordSpacing: 1.5),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100),
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "NOT NOW",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) =>
                                            InitialisingPage()));
                              },
                              child: Text(
                                "CONTINUE",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    )
                  ]),
            ),
          );
        });
  }
}
