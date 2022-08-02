import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CallHistoryItem.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Model/CallModel.dart';

class CallsScreenPage extends StatefulWidget {
  CallsScreenPage({Key? key}) : super(key: key);

  @override
  State<CallsScreenPage> createState() => _CallsScreenPState();
}

class _CallsScreenPState extends State<CallsScreenPage> {
  List<CallModel> _callHistory = [
    CallModel(
        name: "Yogesh",
        time: "July 27 , 11:45PM",
        callType: "2",
        callSubType: "2"),
    CallModel(
        name: "Yogesh",
        time: "July 27 , 11:45PM",
        callType: "1",
        callSubType: "2"),
    CallModel(
        name: "Yogesh",
        time: "July 27 , 11:45PM",
        callType: "3",
        callSubType: "1")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: ListView.builder(
          itemCount: _callHistory.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(),
              child: CallHistoryCard(
                model: _callHistory[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
