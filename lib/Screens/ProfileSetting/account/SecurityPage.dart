import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Util/Constants.dart';

class SecurityPage extends StatefulWidget {
  SecurityPage({Key? key}) : super(key: key);

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  var isEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          "Security",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Column(
          children: [
            customBox(height: 20),
            Image.asset(
              "assets/security.png",
              height: 160,
              width: 160,
            ),
            ListTile(
                title: RichText(
              text: const TextSpan(
                text: securityTitle1,
                style: TextStyle(
                    color: Colors.black, fontSize: 15, wordSpacing: 1.5),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Learn more', style: TextStyle(color: Colors.blue)),
                ],
              ),
            )),
            customBox(height: 15),
            ListTile(
              title: const Text("Show security notifications on this device"),
              trailing: Switch(
                  activeColor: Colors.teal,
                  value: isEnabled,
                  onChanged: (onChanged) {
                    setState(() {
                      isEnabled = !isEnabled;
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30),
              child: RichText(
                  text: const TextSpan(
                text: securityTitle2,
                style: TextStyle(
                    fontSize: 13, color: Colors.grey, wordSpacing: 1.5),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Learn more', style: TextStyle(color: Colors.blue)),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

