import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';
import 'package:whatsapp_clone/Screens/IndividualChatScreen.dart';

class ContactCard extends StatelessWidget {
  ChatModel chatModel;
  ContactCard({Key? key, required this.chatModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => IndividualChatScreen(
                  chatModel: chatModel,
                )));
      },
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
          chatModel.name,
          style: TextStyle(fontSize: 15),
        ),
        subtitle: Text(
          chatModel.bio.toString(),
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}

class InviteContactCard extends StatelessWidget {
  ChatModel chatModel;
  InviteContactCard({Key? key, required this.chatModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
          ),
          radius: 25,
          backgroundColor: Color.fromARGB(96, 160, 157, 157),
        ),
        title: Text(
          chatModel.name,
          style: const TextStyle(fontSize: 15),
        ),
        subtitle: Text(
          chatModel.bio.toString(),
          style: const TextStyle(fontSize: 13),
        ),
        trailing: InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "INVITE",
                style: const TextStyle(fontSize: 13, color: Colors.blueAccent),
              ),
            )),
      ),
    );
  }
}
