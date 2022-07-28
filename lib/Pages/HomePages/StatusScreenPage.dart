import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/CustomUI/StatusPage/HeadOwnStatus.dart';
import 'package:whatsapp_clone/CustomUI/StatusPage/OtherStatus.dart';

class StatusScreenPage extends StatefulWidget {
  StatusScreenPage({Key? key}) : super(key: key);

  @override
  State<StatusScreenPage> createState() => _StatusScreenPageState();
}

bool isMutedShow = false;

class _StatusScreenPageState extends State<StatusScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blueGrey[100]),
          child: Icon(Icons.edit),
        ),
        customBox(height: 8),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.greenAccent[700]),
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
        )
      ]),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadOwnStatus(),
          label("Viwed updates"),
          OtherStatus(
            name: "Yogesh",
            time: "Today, 8:07 PM",
          ),
          OtherStatus(
            name: "Mohit",
            time: "Today, 8:07 PM",
          ),
          OtherStatus(
            name: "Mukesh",
            time: "Today, 8:07 PM",
          ),
          InkWell(
            onTap: () {
              setState(() {
                isMutedShow = !isMutedShow;
              });
            },
            child: Row(children: [
              label("Muted updates"),
              Spacer(),
              Icon(
                isMutedShow ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                color: Colors.blueAccent,
              )
            ]),
          ),
          customBox(width: 20)
        ],
      )),
    );
  }

  Widget label(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Text(
        title,
        style: TextStyle(color: Colors.black38, fontSize: 15),
      ),
    );
  }
}
