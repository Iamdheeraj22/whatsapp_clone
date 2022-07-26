import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/CameraPhotoVideoViewPage.dart';
import 'package:whatsapp_clone/Screens/CameraVideoView.dart';

List<CameraDescription>? list;

class CameraScreen extends StatefulWidget {
  CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _cameraController;
  Future<void>? cameraValue;
  bool _isRecording = false;
  bool flash = false;
  bool isFrontCamera = false;
  String videoUrl = "";
  double angle = 0;
  @override
  void initState() {
    super.initState();
    _cameraController = CameraController(list![0], ResolutionPreset.high);
    cameraValue = _cameraController!.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _cameraController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder(
            future: cameraValue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container(
                    width: phoneWidth(context),
                    child: CameraPreview(_cameraController!));
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              flash = !flash;
                            });
                            flash
                                ? _cameraController!
                                    .setFlashMode(FlashMode.torch)
                                : _cameraController!
                                    .setFlashMode(FlashMode.off);
                          },
                          icon: Icon(
                            flash ? Icons.flash_on : Icons.flash_off,
                            color: Colors.white,
                            size: 28,
                          )),
                      GestureDetector(
                          onLongPress: () async {
                            await _cameraController!.startVideoRecording();
                            setState(() {
                              _isRecording = true;
                            });
                          },
                          onLongPressUp: () async {
                            XFile videopath =
                                await _cameraController!.stopVideoRecording();
                            setState(() {
                              _isRecording = false;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CameraVideoView(
                                          videoUrl: videopath.path,
                                        )));
                          },
                          onTap: () {
                            if (_isRecording == false) takePhoto(context);
                          },
                          child: _isRecording
                              ? const Icon(
                                  Icons.radio_button_on,
                                  color: Colors.red,
                                  size: 70,
                                )
                              : const Icon(
                                  Icons.panorama_fish_eye,
                                  color: Colors.white,
                                  size: 70,
                                )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isFrontCamera = !isFrontCamera;
                              angle = angle + pi;
                            });
                            int position = isFrontCamera ? 1 : 0;
                            _cameraController = CameraController(
                                list![position], ResolutionPreset.high);
                            cameraValue = _cameraController!.initialize();
                          },
                          icon: Transform.rotate(
                            angle: angle,
                            child: Icon(
                              Icons.flip_camera_ios,
                              color: Colors.white,
                              size: 28,
                            ),
                          ))
                    ]),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Hold for video and Tap for photo",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void takePhoto(BuildContext context) async {
    final image = await _cameraController!.takePicture();
    if (!mounted) return;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CameraPhotoVideoViewPage(
                  imagePath: image.path,
                )));
  }
}
