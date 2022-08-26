import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class NotifyChangeNumberPage extends StatefulWidget {
  NotifyChangeNumberPage({Key? key}) : super(key: key);

  @override
  State<NotifyChangeNumberPage> createState() => _NotifyChangeNumberPageState();
}

class _NotifyChangeNumberPageState extends State<NotifyChangeNumberPage> {
  var isNotify = false;
  var groupValue = -1;
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
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(
                    textAlign: TextAlign.center,
                    "You are about to change your number from +91 1236547890",
                    style: TextStyle(fontSize: 13),
                  ),
                  subtitle: Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      "to +91 1236547890",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                customBox(height: 10),
                Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    title: Text(
                      "Notify changes",
                      style: TextStyle(fontSize: 15),
                    ),
                    trailing: Switch(
                        activeColor: Colors.teal,
                        value: isNotify,
                        onChanged: (v) {
                          setState(() {
                            isNotify = !isNotify;
                          });
                        }),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                isNotify
                    ? notifyOption()
                    : Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "Only your groups will be notified about your new number.",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
              ],
            ),
            InkWell(
              onHover: (v) {},
              onTap: () {
                //showChooseMediaOptions();
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
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
      ),
    );
  }

  notifyOption() {
    return Column(children: [
      RadioListTile(
        activeColor: Colors.teal,
        value: 0,
        groupValue: groupValue,
        onChanged: (v) {
          setState(() {
            groupValue = 0;
          });
        },
        title: Text("All contacts"),
      ),
      RadioListTile(
        activeColor: Colors.teal,
        value: 1,
        groupValue: groupValue,
        onChanged: (v) {
          setState(() {
            groupValue = 1;
          });
        },
        title: Text("Contacts I have chats with"),
      ),
      RadioListTile(
        activeColor: Colors.teal,
        value: 2,
        groupValue: groupValue,
        onChanged: (v) {
          setState(() {
            groupValue = 2;
          });
        },
        title: Text("Customs"),
      ),
      Container(
        margin: EdgeInsets.only(left: 20, top: 10),
        child: Text(
          "Your groups and 24 contacts will be notified about your new number.",
          style: TextStyle(fontSize: 11.5),
        ),
      )
    ]);
  }
}
