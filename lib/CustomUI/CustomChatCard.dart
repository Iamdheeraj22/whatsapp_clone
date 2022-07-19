import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';

class CustomChatCard extends StatelessWidget {
  CustomChatCard({Key? key, required this.chatModel}) : super(key: key);
  ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 30,
              child: Icon(
                chatModel.isGroup ? Icons.group : Icons.person,
                size: 33,
                color: Colors.white,
              ),
            ),
            trailing: Text(chatModel.time),
            title: Text(
              chatModel.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 5,
                ),
                Text(
                  chatModel.lastMsg,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            )),
      ),
    );
  }
}
