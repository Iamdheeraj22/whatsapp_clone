import 'dart:io';

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';

class IndividualChatScreen extends StatefulWidget {
  ChatModel chatModel;
  IndividualChatScreen({Key? key, required this.chatModel}) : super(key: key);

  @override
  State<IndividualChatScreen> createState() => _IndividualChatScreenState();
}

class _IndividualChatScreenState extends State<IndividualChatScreen> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 202, 218, 245),
        appBar: AppBar(
          actions: [
            Icon(Icons.videocam),
            customBox(width: 20),
            Icon(Icons.call),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("View contact")),
                PopupMenuItem(child: Text("Media, links, and docs")),
                PopupMenuItem(child: Text("Search")),
                PopupMenuItem(child: Text("Disappearing messages")),
                PopupMenuItem(child: Text("Wallpaper")),
                PopupMenuItem(child: Text("More"))
              ];
            })
          ],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.chatModel.name,
                style: TextStyle(fontSize: 17),
              ),
              Text(
                "last seen today at 18:05",
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          leadingWidth: 80,
          leading: Row(
            children: [
              customBox(width: 5),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back,
                    ),
                    customBox(width: 5),
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      radius: 23,
                      child: Icon(
                        widget.chatModel.isGroup ? Icons.group : Icons.person,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Container(
          height: phoneHeight(context),
          width: phoneWidth(context),
          child: Stack(
            children: [
              ListView(),
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: phoneWidth(context) - 55,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(55)),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: IconButton(
                                            icon: Icon(Icons.emoji_emotions),
                                            onPressed: () {
                                              setState(() {
                                                show = !show;
                                              });
                                            },
                                          ),
                                          suffixIcon: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon:
                                                      Icon(Icons.attach_file)),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.camera_alt))
                                            ],
                                          ),
                                          contentPadding: EdgeInsets.all(13),
                                          hintText: "type a message...")))),
                          customBox(height: 3),
                          CircleAvatar(
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.mic)))
                        ],
                      ),
                      show ? emojiSelection() : Container()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget emojiSelection() {
    return Container(
      height: 250,
      width: phoneWidth(context),
      child: EmojiPicker(
          onEmojiSelected: (category, emoji) {
            print(emoji);
          },
          onBackspacePressed: () {},
          config: Config(
              columns: 7,
              emojiSizeMax: 32 *
                  (Platform.isIOS
                      ? 1.30
                      : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
              verticalSpacing: 0,
              horizontalSpacing: 0,
              initCategory: Category.RECENT,
              bgColor: Color(0xFFF2F2F2),
              indicatorColor: Colors.blue,
              iconColor: Colors.grey,
              iconColorSelected: Colors.blue,
              progressIndicatorColor: Colors.blue,
              showRecentsTab: true,
              recentsLimit: 28,
              tabIndicatorAnimDuration: kTabScrollDuration,
              categoryIcons: const CategoryIcons(),
              buttonMode: ButtonMode.MATERIAL)),
    );
  }
}
