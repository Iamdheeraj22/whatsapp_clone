import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/EndToEndEncryption.dart';

class ChatBackupSettingPage extends StatefulWidget {
  ChatBackupSettingPage({Key? key}) : super(key: key);

  @override
  State<ChatBackupSettingPage> createState() => _ChatBackupState();
}

class _ChatBackupState extends State<ChatBackupSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          "Chat Backup",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, right: 15.0, left: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.backup,
                      color: Colors.grey,
                      size: 25,
                    ),
                    customBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Last Backup",
                          style: TextStyle(color: Colors.grey),
                        ),
                        customBox(height: 10),
                        const Text(
                          "Back up your messages and media Google Drive.\nYou can restore them when you reinstall whatsapp.\nYour messages will also back up to your phone's\n internal storage.",
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.grey, overflow: TextOverflow.clip),
                        ),
                        customBox(height: 15),
                        const Text(
                          "Local: Yesterday, 2:00 AM",
                          style: TextStyle(color: Colors.grey),
                        ),
                        customBox(height: 5),
                        const Text(
                          "Google Drive: March 22, 12:20 AM",
                          style: TextStyle(color: Colors.grey),
                        ),
                        customBox(height: 5),
                        const Text(
                          "Size: 252 MB",
                          style: TextStyle(color: Colors.grey),
                        ),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(left: 5, top: 20),
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "BACK UP",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              customBox(height: 15),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => EndToEndEncryptionPage()));
                },
                leading: const Icon(Icons.lock),
                title: const Text(
                  "End-to-end encrypted backup",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: const Text("On"),
              ),
              customBox(height: 10),
              ListTile(
                leading: Image.asset(
                  "assets/drive.png",
                  height: 27,
                  width: 25,
                  color: Colors.grey,
                ),
                title: const Text(
                  "Google Drive settings",
                  style: TextStyle(fontSize: 13.5, color: Colors.grey),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "You are currently backing up to Google Drive. For added security, you can protect your backup with end-to-end encryption.",
                    style: TextStyle(fontSize: 12.5),
                  ),
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
                  "Back up to Google Drive",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: const Text(
                  "Only when I tap Back up",
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                title: const Text(
                  "Google Account",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: const Text(
                  "dheerajprajapati25647@yopmail.com",
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                title: const Text(
                  "Back up using cellular",
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Switch(value: false, onChanged: (v) {}),
              ),
              customBox(height: 5),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                title: const Text(
                  "Include videos",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: const Text(
                  "15 MB backed up",
                  style: TextStyle(fontSize: 12.5),
                ),
                trailing: Switch(value: false, onChanged: (v) {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
