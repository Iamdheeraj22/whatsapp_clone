import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomChatCard.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';
import 'package:whatsapp_clone/Screens/IndividualChatScreen.dart';
import 'package:whatsapp_clone/Screens/SelectContactsPage.dart';

class ChatScreenPage extends StatefulWidget {
  ChatScreenPage({Key? key}) : super(key: key);

  @override
  State<ChatScreenPage> createState() => _ChatScreenPageState();
}

class _ChatScreenPageState extends State<ChatScreenPage> {
  List<ChatModel>? chatList = [
    ChatModel("Mahendra Bahubali", "Hii , dude", "15:09", false, true),
    ChatModel("Situ", "Hii , dude", "15:09", false, true),
    ChatModel(
        "Mongodb Developers", "Hii ,all developers", "15:09", true, false),
    ChatModel("Google Developers", "Hii , buddies", "15:09", false, true),
    ChatModel("Bahubali", "Hii , dude", "15:09", false, true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SelectContactsPage()));
          },
          child: Icon(Icons.chat)),
      body: ListView.builder(
          itemCount: chatList!.length,
          itemBuilder: (context, index) {
            return CustomChatCard(chatModel: chatList![index]);
          }),
    );
  }
}
