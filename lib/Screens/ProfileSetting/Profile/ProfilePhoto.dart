import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/Profile/ProfilePage.dart';

class ProfilePhotoPage extends StatefulWidget {
  ProfilePhotoPage({Key? key}) : super(key: key);

  @override
  State<ProfilePhotoPage> createState() => _ProfilePhotoPageState();
}

class _ProfilePhotoPageState extends State<ProfilePhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        title: const Text(
          "Profile photo",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                openPhotoSelectionBottomsheet(context);
              },
              icon: Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: Icon(Icons.share))
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Container(
            height: phoneHeight(context) / 2,
            width: phoneWidth(context),
            child: InteractiveViewer(
              child: Image.asset(
                "assets/1.jpeg",
                fit: BoxFit.fill,
              ),
            )),
      )),
    );
  }
}
