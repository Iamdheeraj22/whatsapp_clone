import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';

class IndividualChatScreen extends StatefulWidget {
  ChatModel chatModel;
  IndividualChatScreen({Key? key, required this.chatModel}) : super(key: key);

  @override
  State<IndividualChatScreen> createState() => _IndividualChatScreenState();
}

class _IndividualChatScreenState extends State<IndividualChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
        actions: [
          Icon(Icons.videocam),
          customBox(width: 20),
          Icon(Icons.call),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("View contact")),
              PopupMenuItem(child: Text("Media, links, and docs")),
              PopupMenuItem(child: Text("Search")),
              PopupMenuItem(child: Text("Disappearing messages")),
              PopupMenuItem(child: Text("Wallpaper")),
              PopupMenuItem(child: Text("More"))
            ];
          })
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.chatModel.name,
              style: TextStyle(fontSize: 17),
            ),
            Text(
              "last seen today at 18:05",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
        leadingWidth: 80,
        leading: Row(
          children: [
            customBox(width: 5),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back,
                  ),
                  customBox(width: 5),
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 23,
                    child: Icon(
                      widget.chatModel.isGroup ? Icons.group : Icons.person,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
