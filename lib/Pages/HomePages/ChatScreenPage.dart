import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomChatCard.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';

class ChatScreenPage extends StatefulWidget {
  ChatScreenPage({Key? key}) : super(key: key);

  @override
  State<ChatScreenPage> createState() => _ChatScreenPageState();
}

class _ChatScreenPageState extends State<ChatScreenPage> {
  List<ChatModel>? chatList = [
    ChatModel(
        name: "Mahendra Bahubali",
        lastMsg: "Hii , dude",
        time: "15:09",
        isGroup: false),
    ChatModel(
        name: "Situ", lastMsg: "Hii , dude", time: "15:09", isGroup: false),
    ChatModel(
        name: "Mongodb Developers",
        lastMsg: "Hii ,all developers",
        time: "15:09",
        isGroup: true),
    ChatModel(
        name: "Google Developers",
        lastMsg: "Hii , buddies",
        time: "15:09",
        isGroup: true),
    ChatModel(
        name: "Bahubali", lastMsg: "Hii , dude", time: "15:09", isGroup: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.chat)),
      body: ListView.builder(
          itemCount: chatList!.length,
          itemBuilder: (context, index) {
            return CustomChatCard(chatModel: chatList![index]);
          }),
    );
  }
}
