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
  FocusNode focusNode = FocusNode();
  bool show = false;
  bool _showattach = false;
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          show = false;
          _showattach = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
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
          child: WillPopScope(
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
                        Container(
                          child: _showattach ? options() : null,
                        ),
                        Row(
                          children: [
                            Container(
                                width: phoneWidth(context) - 55,
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(55)),
                                    child: TextFormField(
                                        controller: _controller,
                                        focusNode: focusNode,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            prefixIcon: IconButton(
                                              icon: const Icon(
                                                  Icons.emoji_emotions),
                                              onPressed: () {
                                                setState(() {
                                                  focusNode.unfocus();
                                                  focusNode.canRequestFocus =
                                                      false;
                                                  Future.delayed(
                                                      Duration(seconds: 5), () {
                                                    show = !show;
                                                    _showattach = false;
                                                  });
                                                });
                                              },
                                            ),
                                            suffixIcon: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      focusNode.unfocus();
                                                      focusNode
                                                              .canRequestFocus =
                                                          false;
                                                      setState(() {
                                                        _showattach =
                                                            !_showattach;
                                                        show = false;
                                                      });
                                                    },
                                                    icon: const Icon(
                                                        Icons.attach_file)),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                        Icons.camera_alt))
                                              ],
                                            ),
                                            contentPadding:
                                                const EdgeInsets.all(13),
                                            hintText: "Message")))),
                            customBox(height: 3),
                            CircleAvatar(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.mic)))
                          ],
                        ),
                        show ? emojiSelection() : Container()
                      ],
                    ),
                  ),
                )
              ],
            ),
            onWillPop: () {
              if (show) {
                setState(() {
                  show = false;
                });
              } else if (_showattach) {
                setState(() {
                  _showattach = false;
                });
              } else {
                Navigator.pop(context);
              }
              return Future.value(false);
            },
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
            setState(() {
              _controller.text = _controller.text + emoji.emoji;
            });
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

  Widget optionCretion(IconData icons, Color color, String title) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 25,
          child: Icon(
            icons,
            color: Colors.white,
            size: 23,
          ),
        ),
        customBox(height: 8),
        Text(title)
      ],
    );
  }

  Widget options() {
    return Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        width: phoneWidth(context),
        margin: EdgeInsets.only(bottom: 5, left: 7, right: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                optionCretion(Icons.insert_drive_file, Colors.blue, "Document"),
                customBox(height: 5),
                optionCretion(Icons.headphones,
                    Color.fromARGB(255, 255, 102, 0), "Audio"),
                customBox(height: 5),
                optionCretion(
                    Icons.person, Color.fromARGB(255, 42, 161, 106), "Person"),
              ],
            ),
            customBox(width: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                optionCretion(Icons.photo_camera, Colors.pink, "Camera"),
                customBox(height: 5),
                optionCretion(Icons.location_pin,
                    Color.fromARGB(255, 22, 190, 44), "Location"),
              ],
            ),
            customBox(width: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                optionCretion(Icons.photo_library,
                    Color.fromARGB(255, 199, 30, 233), "Gallery"),
                customBox(height: 5),
                optionCretion(Icons.currency_rupee,
                    Color.fromARGB(255, 42, 161, 106), "Payment"),
              ],
            )
          ],
        ));
  }
}
