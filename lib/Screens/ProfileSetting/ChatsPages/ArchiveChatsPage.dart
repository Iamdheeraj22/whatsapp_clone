import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class ArchiveChatsPage extends StatefulWidget {
  ArchiveChatsPage({Key? key}) : super(key: key);

  @override
  State<ArchiveChatsPage> createState() => _ArchiveChatsPageState();
}

class _ArchiveChatsPageState extends State<ArchiveChatsPage> {
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          automaticallyImplyLeading: true,
          title: const Text(
            "Archive chats",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              customBox(height: 15),
              ListTile(
                title: const Text(
                  "Keep chats archived",
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: const Text(
                  "Archived chats will remain archived when you receive a new message",
                  style: TextStyle(fontSize: 12.5),
                ),
                trailing: Switch(
                    activeColor: Colors.teal,
                    value: isChecked,
                    onChanged: (v) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    }),
              ),
            ],
          ),
        ));
  }
}
