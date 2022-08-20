import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customBox({double height = 0.0, double width = 0.0}) {
  return SizedBox(height: height, width: width);
}

double phoneHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double phoneWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}



  openPhotoSelectionBottomsheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        enableDrag: true,
        context: context,
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        builder: (builder) {
          return StatefulBuilder(builder: (context, state) {
            return Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  ListTile(
                    leading: const Text(
                      "Profile Photo",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.delete),
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 25),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Column(children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: Image.asset(
                                "assets/camera.png",
                                color: Colors.teal,
                                height: 20,
                                width: 20,
                              ),
                            ),
                            customBox(height: 7),
                            const Text(
                              "Camera",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ]),
                        ),
                        customBox(width: 30),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Column(children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: Image.asset(
                                "assets/photo.png",
                                color: Colors.teal,
                                height: 20,
                                width: 20,
                              ),
                            ),
                            customBox(height: 7),
                            const Text(
                              "Gallery",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ]),
                        )
                      ],
                    ),
                  )
                ]));
          });
        });
  }