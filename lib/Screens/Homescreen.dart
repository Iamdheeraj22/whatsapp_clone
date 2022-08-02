import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/HomePages/CallsScreenPage.dart';
import 'package:whatsapp_clone/Pages/HomePages/CameraPage.dart';
import 'package:whatsapp_clone/Pages/HomePages/ChatScreenPage.dart';
import 'package:whatsapp_clone/Pages/HomePages/StatusScreenPage.dart';

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
        automaticallyImplyLeading: false,
        title: Text("Whatsapp Clone"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("New group")),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("Linked devices")),
              PopupMenuItem(child: Text("Starred messages")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Settings"))
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
