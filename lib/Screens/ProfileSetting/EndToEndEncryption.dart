import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class EndToEndEncryptionPage extends StatefulWidget {
  EndToEndEncryptionPage({Key? key}) : super(key: key);

  @override
  State<EndToEndEncryptionPage> createState() => _EndToEndEncryptionPageState();
}

class _EndToEndEncryptionPageState extends State<EndToEndEncryptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: InkWell(
              child: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          )),
          elevation: 0.0,
          backgroundColor: Colors.transparent),
      body: Container(
        color: Colors.white,
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Column(
            children: [
              customBox(height: 40),
              Image.asset(
                "assets/encryption.png",
              ),
              customBox(height: 10),
              Text(
                "End-to-end encrypted backup is off",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              customBox(height: 25),
              Text(
                "When turned on, your backup will be end-to-end\nencrypted before it gets uploaded to Google Drive\nNo one, not even Google or Whatsapp, will be able to\naccess it.",
                textAlign: TextAlign.center,
              ),
              customBox(height: 30),
              Text(
                "Your current Google Drive backup size is 252 MB\nincluding 249 MB Media.",
                textAlign: TextAlign.center,
              )
            ],
          ),
          InkWell(
            onTap: () {},
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                width: phoneWidth(context),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal,
                ),
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "TURN ON",
                  style: TextStyle(color: Colors.white, fontSize: 13.5),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
