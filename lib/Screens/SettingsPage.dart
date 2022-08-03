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
        title: Text(
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
            title: Text("Dheeraj Prajapat"),
            subtitle: Text(
              "Taste the success once... tounge want more",
              style: TextStyle(color: Colors.grey, fontSize: 11.5),
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
          ),
          customBox(height: 20),
          ListTile(
            leading: Icon(Icons.key),
          )
        ]),
      ),
    );
  }
}
