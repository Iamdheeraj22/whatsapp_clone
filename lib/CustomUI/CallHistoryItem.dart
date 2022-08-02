import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Model/CallModel.dart';

class CallHistoryCard extends StatelessWidget {
  CallModel model;
  CallHistoryCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
          ),
          radius: 25,
          backgroundColor: Color.fromARGB(96, 160, 157, 157),
        ),
        title: Text(
          model.name,
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        subtitle: Row(
          children: [
            Container(
                child: model.callSubType == "1"
                    ? Image.asset(
                        "assets/incoming_call.png",
                        height: 10,
                        width: 10,
                        color: Colors.green,
                      )
                    : model.callSubType == "2"
                        ? Image.asset(
                            "assets/outgoing_call.png",
                            height: 10,
                            width: 10,
                            color: Colors.green,
                          )
                        : Icon(
                            Icons.call_missed,
                            color: Colors.red,
                          )),
            customBox(width: 8),
            Text(
              model.time.toString(),
              style: TextStyle(color: Colors.grey, fontSize: 13),
            )
          ],
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              model.callType == "1" ? Icons.videocam : Icons.call,
              size: 25,
              color: Colors.teal,
            )),
      ),
    );
  }
}
