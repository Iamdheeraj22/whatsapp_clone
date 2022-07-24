import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class CameraPhotoVideoViewPage extends StatelessWidget {
  String imagePath = "";
  CameraPhotoVideoViewPage({Key? key, required this.imagePath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.crop_rotate,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.emoji_emotions,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.title,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Stack(
          children: [
            Container(
              width: phoneWidth(context),
              height: phoneHeight(context) - 150,
              child: Image.file(
                File(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.black38,
                width: phoneWidth(context),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: TextField(
                  maxLines: null,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  decoration: InputDecoration(
                      suffixIcon: CircleAvatar(
                          child: Icon(
                        Icons.done,
                        color: Colors.white,
                      )),
                      prefixIcon:
                          Icon(Icons.add_photo_alternate, color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white, fontSize: 17),
                      border: InputBorder.none,
                      hintText: "Add caption"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
