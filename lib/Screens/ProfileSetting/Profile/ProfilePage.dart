import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/Profile/AboutPage.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/Profile/ProfilePhoto.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

//
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customBox(height: 25),
            Container(
              height: 108.0,
              width: 110.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ProfilePhotoPage()));
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        "assets/1.jpeg",
                        height: 105.0,
                        width: 105.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {
                          openPhotoSelectionBottomsheet(context);
                        },
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            customBox(height: 20),
            ListTile(
              onTap: () {
                openBottomsheet();
              },
              leading: const Icon(
                Icons.person,
                color: Colors.grey,
                size: 25,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Name",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const Text(
                    "Dheeraj Prajapat",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  customBox(height: 5)
                ],
              ),
              subtitle: const Text(
                "This is not your username or pin. This name will be visible to your Whatsapp contacts",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              trailing: const Icon(
                Icons.edit,
                color: Colors.teal,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => AboutPage()));
              },
              leading: const Icon(Icons.info),
              title: const Text(
                "About",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              subtitle: const Text(
                "If you want to peace, so prepare for war. ",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              trailing: const Icon(
                Icons.edit,
                color: Colors.teal,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.call),
              title: const Text(
                "Phone",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              subtitle: const Text(
                "+91 8290845089",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            )
          ],
        ),
      )),
    );
  }

  openBottomsheet() {
    var coounterNumber = "";
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("About"),
                    ),
                    subtitle: TextField(
                        onChanged: (v) {
                          state(() {
                            coounterNumber = v;
                          });
                        },
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                          ),
                          suffix: Text(
                            coounterNumber.length.toString(),
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12.5),
                          ),
                        )),
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: IconButton(
                        icon: const Icon(Icons.emoji_emotions),
                        onPressed: () {},
                      ),
                    ),
                  ),
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
                            style: TextStyle(fontSize: 14, color: Colors.teal),
                          )),
                      customBox(width: 20),
                      TextButton(
                          onPressed: () {
                            state(() {
                              //bios.add(coounterNumber.toString());
                            });
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "SAVE",
                            style: TextStyle(fontSize: 14, color: Colors.teal),
                          )),
                      customBox(width: 10),
                    ],
                  )
                ],
              ),
            );
          });
        });
  }
}
