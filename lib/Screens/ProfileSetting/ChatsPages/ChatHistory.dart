import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class ChatHistoryPage extends StatefulWidget {
  ChatHistoryPage({Key? key}) : super(key: key);

  @override
  State<ChatHistoryPage> createState() => _ChatHistoryPageState();
}

class _ChatHistoryPageState extends State<ChatHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Chat history"),
        elevation: 0.0,
      ),
      body: SafeArea(
          child: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.upload,
                size: 25,
              ),
              title: const Text(
                "Export chat",
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              onTap: () {
                showAllChatArchivebox();
              },
              leading: const Icon(
                Icons.archive,
                size: 25,
              ),
              title: const Text(
                "Archive all chats",
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              onTap: () {
                showAllClearChatsbox("1");
              },
              leading: const Icon(
                Icons.block,
                size: 25,
              ),
              title: const Text(
                "Clear all chats",
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              onTap: () {
                showAllClearChatsbox("2");
              },
              leading: const Icon(
                Icons.delete,
                size: 25,
              ),
              title: const Text(
                "Delete all chats",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      )),
    );
  }

//All Chat Archive
  showAllChatArchivebox() {
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
                        Text("Are you sure you want to archive ALL chats?"),
                        customBox(height: 15),
                        Row(
                          children: [
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "CANCEL",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.teal),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "OK",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.teal),
                                ))
                          ],
                        )
                      ])));
        });
  }

//All Clear Chats
  showAllClearChatsbox(String type) {
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
                          "Clear all chats",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        customBox(height: 10),
                        Text(
                          "Messages will only be removed from this devices and your devices on the newer versions of WhatsApp.",
                          style: TextStyle(fontSize: 12),
                        ),
                        customBox(height: 15),
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (v) {}),
                            AutoSizeText(
                                "Also delete media received in chats\n from the device gallery.",
                                wrapWords: true,
                                maxLines: 2)
                          ],
                        ),
                        customBox(height: 3),
                        Visibility(
                          visible: type == "1" ? true : false,
                          child: Row(
                            children: [
                              Checkbox(value: false, onChanged: (v) {}),
                              AutoSizeText("Delete starred messages.",
                                  wrapWords: true, maxLines: 2)
                            ],
                          ),
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
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.teal),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  type == "1" ? "CLEAR CHATS" : "DELTE CHATS",
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.teal),
                                ))
                          ],
                        )
                      ])));
        });
  }
}
