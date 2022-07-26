import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class CameraVideoView extends StatefulWidget {
  String videoUrl = "";
  CameraVideoView({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<CameraVideoView> createState() => _CameraVideoView();
}

class _CameraVideoView extends State<CameraVideoView> {
  VideoPlayerController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(File(widget.videoUrl))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.crop_rotate,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.emoji_emotions,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.title,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Stack(
          children: [
            Container(
              width: phoneWidth(context),
              height: phoneHeight(context) - 150,
              child: _controller!.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller!.value.aspectRatio,
                      child: VideoPlayer(_controller!),
                    )
                  : CircularProgressIndicator(),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.black38,
                width: phoneWidth(context),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: const TextField(
                  maxLines: null,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  decoration: InputDecoration(
                      suffixIcon: CircleAvatar(
                          child: Icon(
                        Icons.done,
                        color: Colors.white,
                      )),
                      prefixIcon:
                          Icon(Icons.add_photo_alternate, color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white, fontSize: 17),
                      border: InputBorder.none,
                      hintText: "Add caption"),
                ),
              ),
            ),
            Center(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      _controller!.value.isPlaying
                          ? _controller!.pause()
                          : _controller!.play();
                    });
                  },
                  child: CircleAvatar(
                    radius: 33,
                    backgroundColor: Colors.black38,
                    child: Icon(
                      _controller!.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                      color: Colors.white,
                      size: 50,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
