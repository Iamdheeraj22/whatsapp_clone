import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomChatCard.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';

class BlockContactsPage extends StatefulWidget {
  BlockContactsPage({Key? key}) : super(key: key);

  @override
  State<BlockContactsPage> createState() => _BlockContactsPageState();
}

class _BlockContactsPageState extends State<BlockContactsPage> {
  var chatList = [
    "Mahendra Bahubali",
    "Situ",
    "Mongodb Developers",
    "Google Developers",
    "Bahubali",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          "Blocked Contacts",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person_add))],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                "Contacts",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      onTap: () {
                        show_alertbox();
                      },
                      leading: const CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        radius: 30,
                        child: Icon(
                          Icons.person,
                          size: 33,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        chatList[index].toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }),
          ],
        ),
      )),
    );
  }

  show_alertbox() {
    return showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
            child: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                customBox(height: 15),
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child:
                        const Text("Are you sre you unlblock this contact?")),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "UNBLOCK",
                            style: TextStyle(color: Colors.teal),
                          )),
                      customBox(width: 15),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "CANCEL",
                            style: TextStyle(color: Colors.teal),
                          ))
                    ],
                  ),
                )
              ],
            )),
          );
        });
  }
}
