import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/ChangeNumber/ConfirmNumberPage.dart';

class ChangePhoneNumberIntroduction extends StatefulWidget {
  ChangePhoneNumberIntroduction({Key? key}) : super(key: key);
  @override
  State<ChangePhoneNumberIntroduction> createState() =>
      _ChangePhoneNumberIntroductionState();
}

var pageNumber = 0;

class _ChangePhoneNumberIntroductionState
    extends State<ChangePhoneNumberIntroduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: true,
        title: const Text(
          "Change number",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(15),
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                customBox(height: 10),
                Image.asset(
                  "assets/change_number.JPEG",
                  height: 120,
                  width: 120,
                ),
                customBox(height: 25),
                const Text(
                  "Change your phone number will migrate your account info, groups & settings.",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                customBox(height: 25),
                const Text(
                  "Before preceeding, please confirm that you are able to receive SMS or calls at your new number.",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                customBox(height: 25),
                const Text(
                  "If you have both a new phone & a new number, first change your number on your old phone.",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            InkWell(
              onHover: (v) {},
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ConfirmNumberPage()));
              },
              child: Container(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.teal, borderRadius: BorderRadius.circular(3)),
                child: const Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
