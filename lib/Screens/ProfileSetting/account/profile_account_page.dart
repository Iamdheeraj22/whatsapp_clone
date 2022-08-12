import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class ProfileAccountPage extends StatefulWidget {
  ProfileAccountPage({Key? key}) : super(key: key);

  @override
  State<ProfileAccountPage> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          "Account",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Column(children: [
          customBox(height: 10),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.lock,
              color: Colors.grey,
            ),
            title: const Text("Privacy"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.shield,
              color: Colors.grey,
            ),
            title: const Text("Security"),
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(top: 6),
              child: Center(
                  child: Text(
                "* * *",
                style: TextStyle(color: Colors.white),
              )),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(3)),
              width: 30,
              height: 20,
            ),
            title: const Text("Two-step verification"),
          ),
          ListTile(
            onTap: () {},
            leading: Image.asset(
              "assets/logout.png",
              height: 30,
              fit: BoxFit.cover,
              color: Colors.grey,
              width: 35,
            ),
            title: const Text("Change number"),
          ),
          ListTile(
            onTap: () {},
            leading: Image.asset(
              "assets/excel.png",
              height: 30,
              fit: BoxFit.cover,
              width: 30,
              color: Colors.grey,
            ),
            title: const Text("Request account info"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.delete,
              color: Colors.grey,
              size: 30,
            ),
            title: const Text("Delete my account"),
          ),
        ]),
      ),
    );
  }
}
