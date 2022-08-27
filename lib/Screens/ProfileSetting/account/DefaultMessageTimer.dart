import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Util/Constants.dart';

class DefaultMessageTimer extends StatefulWidget {
  DefaultMessageTimer({Key? key}) : super(key: key);

  @override
  State<DefaultMessageTimer> createState() => _DefaultMessageTimerState();
}

class _DefaultMessageTimerState extends State<DefaultMessageTimer> {
  var timer = ["24 hours", "7 days", "90 days", "Off"];
  var groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          "Default message timer",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customBox(height: 15),
            Center(
              child: Image.asset(
                "assets/ddd.png",
                height: 160,
                width: 160,
              ),
            ),
            customBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                "Start new chats with dissapearing messages.",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
            timerOptionsDesign(),
            Padding(
                padding: EdgeInsets.only(left: 18),
                child: RichText(
                  text: TextSpan(
                    text: dissapearing_message,
                    style: TextStyle(color: Colors.black, fontSize: 13),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Learn more',
                          style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                )),
          ],
        )),
      ),
    );
  }

  timerOptionsDesign() {
    return ListView.builder(
        itemCount: timer.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return RadioListTile(
              activeColor: Colors.teal,
              title: Text(timer[index]),
              value: index,
              groupValue: groupValue,
              onChanged: (onChanged) {
                setState(() {
                  groupValue = index;
                });
              });
        });
  }
}
