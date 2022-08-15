import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class ChatsPage extends StatefulWidget {
  ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          "Chats",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 18),
                child: const Text(
                  "Display",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              customBox(height: 5),
              ListTile(
                onTap: () {},
                leading: const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.brightness_medium,
                    size: 30,
                  ),
                ),
                title: const Text(
                  "Theme",
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: const Text("System default",
                    style: TextStyle(fontSize: 12.5)),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.wallpaper,
                  size: 25,
                ),
                title: const Text(
                  "Wallpaper",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 18),
                child: const Text(
                  "Chats settings",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                title: const Text(
                  "Enter to send",
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: const Text(
                  "Enter key will send message",
                  style: TextStyle(fontSize: 12.5),
                ),
                trailing: Switch(value: false, onChanged: (v) {}),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                title: const Text(
                  "Media visiability",
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: const Text(
                  "Show newly downloaded media in your device's gallery",
                  style: TextStyle(fontSize: 12.5),
                ),
                trailing: Switch(value: false, onChanged: (v) {}),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                title: const Text(
                  "Font size",
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: const Text(
                  "Medium",
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 18),
                child: const Text(
                  "Archived chats",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              customBox(height: 10),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                title: const Text(
                  "Keep chats archived",
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: const Text(
                  "Archived chats will remain archived when you receive a new message",
                  style: TextStyle(fontSize: 12.5),
                ),
                trailing: Switch(value: false, onChanged: (v) {}),
              ),
              customBox(height: 10),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.backup,
                  size: 25,
                ),
                title: const Text(
                  "Chat backup",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              customBox(height: 5),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.history,
                  size: 25,
                ),
                title: const Text(
                  "Chat history",
                  style: TextStyle(fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
