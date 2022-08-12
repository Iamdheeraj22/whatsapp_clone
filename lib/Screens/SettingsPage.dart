import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
              leading: const Padding(
                  padding: EdgeInsets.only(top: 6), child: Icon(Icons.storage)),
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
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Image.asset(
                  "assets/key.png",
                  color: Colors.grey,
                  height: 30,
                ),
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
}
