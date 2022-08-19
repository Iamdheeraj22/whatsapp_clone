import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/HomePages/CallsScreenPage.dart';
import 'package:whatsapp_clone/Pages/HomePages/CameraPage.dart';
import 'package:whatsapp_clone/Pages/HomePages/ChatScreenPage.dart';
import 'package:whatsapp_clone/Pages/HomePages/StatusScreenPage.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/SettingsPage.dart';

class HomescreenPage extends StatefulWidget {
  HomescreenPage({Key? key}) : super(key: key);

  @override
  State<HomescreenPage> createState() => _HomescreenPageState();
}

class _HomescreenPageState extends State<HomescreenPage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        title: Text("Whatsapp Clone"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(onSelected: (index) {
            if (index == 6) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => SettingsPage()));
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(value: 1, child: Text("New group")),
              PopupMenuItem(value: 2, child: Text("New broadcast")),
              PopupMenuItem(value: 3, child: Text("Linked devices")),
              PopupMenuItem(value: 4, child: Text("Starred messages")),
              PopupMenuItem(value: 5, child: Text("Payments")),
              PopupMenuItem(value: 6, child: Text("Settings"))
            ];
          })
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            )
          ],
        ),
      ),
      body: TabBarView(controller: _controller, children: [
        CameraPage(),
        ChatScreenPage(),
        StatusScreenPage(),
        CallsScreenPage()
      ]),
    );
  }
}
