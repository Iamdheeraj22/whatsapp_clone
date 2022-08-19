import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/ChatsPages/ChatsPage.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/HelpPage.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/NotificationsPage.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/StorageDataPage.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/account/profile_account_page.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: true,
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: ListView(children: [
          customBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/1.jpeg"),
            ),
            title: const Text("Dheeraj Prajapat"),
            subtitle: const Text(
              "Taste the success once... tounge want more",
              style: TextStyle(color: Colors.grey, fontSize: 11.5),
            ),
            trailing:
                IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code)),
          ),
          customBox(height: 10),
          //account
          ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ProfileAccountPage()));
              },
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Image.asset(
                  "assets/key.png",
                  color: Colors.grey,
                  height: 30,
                ),
              ),
              title: Text(
                "Account",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              subtitle: Text(
                "Privacy, security, change number",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )),
          //Chats
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => ChatsPage()));
              },
              leading: const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(
                    Icons.message,
                    color: Colors.grey,
                  )),
              title: const Text(
                "Chats",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              subtitle: const Text(
                "Theme, wallpapers, chat history",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )),
          //Notifications
          ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => NotificationsPage()));
              },
              leading: const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.grey,
                  )),
              title: const Text(
                "Notifications",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              subtitle: const Text(
                "Message, group & call tones",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )),
          //Storage and data
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StorageDataPage()));
              },
              leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Image.asset(
                    "assets/storage_graph.png",
                    height: 30,
                    width: 30,
                    color: Colors.grey,
                  )),
              title: const Text(
                "Storage and data",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              subtitle: const Text(
                "Network usage, auto download",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )),
          //app language
          ListTile(
              onTap: () {
                openBottomsheet();
              },
              leading: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Image.asset(
                  "assets/earth.png",
                  color: Colors.grey,
                  height: 30,
                ),
              ),
              title: const Text(
                "App language",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              subtitle: const Text(
                "English(phone's language)",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )),
          //Help
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => HelpPage()));
              },
              leading: const Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Icon(Icons.question_mark),
              ),
              title: const Text(
                "Help",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              subtitle: const Text(
                "Help center, contact us, privacy policy",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )),
          //Invite
          ListTile(
            onTap: () {},
            leading: const Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Icon(Icons.group),
            ),
            title: const Text("Invite a friend"),
          )
        ]),
      ),
    );
  }

  //Dragable Bottomsheet
  openBottomsheet() {
    showModalBottomSheet(
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
              width: phoneWidth(context),
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 7),
                      alignment: Alignment.center,
                      height: 5,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      )),
                  customBox(height: 5),
                  ListTile(
                    leading: InkWell(
                      child: Icon(Icons.close),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    title: const Text(
                      "App language",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  customBox(height: 3),
                  Container(
                    height: 0.7,
                    color: Colors.grey,
                  ),
                  Flexible(
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Radio(
                                value: 1, groupValue: -1, onChanged: (v) {}),
                            title: Text("English"),
                          );
                        }),
                  )
                ],
              ),
            );
          });
        });
  }
}
