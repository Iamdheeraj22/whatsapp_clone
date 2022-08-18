import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/ChatBackupSettingPage.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/ChatHistory.dart';

class ChatsPage extends StatefulWidget {
  ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  var groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
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
                onTap: () {
                  showThemeDialogbox();
                },
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
                onTap: () {
                  showFontSize();
                },
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ChatBackupSettingPage()));
                },
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatHistoryPage()));
                },
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

  showThemeDialogbox() {
    showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 20, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    customBox(height: 20),
                    const Text(
                      "Choose Theme",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    customBox(height: 5),
                    Row(
                      children: [
                        Radio(
                            value: groupValue == 0 ? true : false,
                            groupValue: groupValue,
                            onChanged: (v) {
                              setState(() {
                                groupValue = 0;
                              });
                            }),
                        customBox(width: 10),
                        const Text(
                          "System default",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: groupValue == 1 ? true : false,
                            groupValue: groupValue,
                            onChanged: (v) {
                              setState(() {
                                groupValue = 1;
                              });
                            }),
                        customBox(width: 10),
                        const Text(
                          "Light",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: groupValue == 2 ? true : false,
                            groupValue: groupValue,
                            onChanged: (v) {
                              state() {
                                groupValue = 2;
                              }
                            }),
                        customBox(width: 10),
                        const Text(
                          "Dark",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "CANCEL",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.teal),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "OK",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.teal),
                            ))
                      ],
                    )
                  ],
                ),
              ));
        });
  }

  showFontSize() {
    showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.only(left: 20, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        customBox(height: 20),
                        const Text(
                          "Font Size",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        customBox(height: 5),
                        Row(
                          children: [
                            Radio(
                                value: false,
                                groupValue: groupValue,
                                onChanged: (v) {
                                  setState(() {
                                    groupValue = 0;
                                  });
                                }),
                            customBox(width: 10),
                            const Text(
                              "Small",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: false,
                                groupValue: groupValue,
                                onChanged: (v) {
                                  setState(() {
                                    groupValue = 1;
                                  });
                                }),
                            customBox(width: 10),
                            const Text(
                              "Medium",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: false,
                                groupValue: groupValue,
                                onChanged: (v) {
                                  state() {
                                    groupValue = 2;
                                  }
                                }),
                            customBox(width: 10),
                            const Text(
                              "Large",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ])));
        });
  }
}
