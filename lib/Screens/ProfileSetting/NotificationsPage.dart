import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class NotificationsPage extends StatefulWidget {
  NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final vibrationOptions = ["Off", "Default", "Short", "Long"];
  final colors = [
    "None",
    "White",
    "Red",
    "Yellow",
    "Green",
    "Cyan",
    "Blue",
    "Purple"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0.0,
        title: Text("Notifications"),
      ),
      body: SafeArea(
          child: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ListTile(
              onTap: () {},
              title: const Text(
                "Conversation tones",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Play sounds for incoming and outgoing messages",
                style: TextStyle(fontSize: 13),
              ),
              trailing: Switch(value: false, onChanged: (v) {}),
            ),
            customBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Messages",
                style: TextStyle(fontSize: 11.7, color: Colors.grey),
              ),
            ),
            const ListTile(
              title: Text(
                "Notification tone",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Default(287)",
                style: TextStyle(fontSize: 13),
              ),
            ),
            ListTile(
              onTap: () {
                showVibrateOptions();
              },
              title: const Text(
                "Vibrate",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: const Text(
                "Default",
                style: TextStyle(fontSize: 13),
              ),
            ),
            const ListTile(
              title: Text(
                "Popup notification",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Not Available",
                style: TextStyle(fontSize: 13),
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Use high priority notifications",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: const Text(
                "Show previews of notifications at top of the screen",
                style: TextStyle(fontSize: 13),
              ),
              trailing: Switch(value: false, onChanged: (v) {}),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Reaction Notifications",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: const Text(
                "Show notifications for reactions to messages you send",
                style: TextStyle(fontSize: 13),
              ),
              trailing: Switch(value: false, onChanged: (v) {}),
            ),
            customBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Groups",
                style: TextStyle(fontSize: 11.7, color: Colors.grey),
              ),
            ),
            const ListTile(
              title: Text(
                "Notification tone",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Default(287)",
                style: TextStyle(fontSize: 13),
              ),
            ),
            ListTile(
              onTap: () {
                showVibrateOptions();
              },
              title: const Text(
                "Vibrate",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: const Text(
                "Default",
                style: TextStyle(fontSize: 13),
              ),
            ),
            ListTile(
              onTap: () {
                showLightOptions();
              },
              title: const Text(
                "Light",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: const Text(
                "Default",
                style: TextStyle(fontSize: 13),
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Use high priority notifications",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: const Text(
                "Show previews of notifications at top of the screen",
                style: TextStyle(fontSize: 13),
              ),
              trailing: Switch(value: false, onChanged: (v) {}),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Reaction Notifications",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: const Text(
                "Show notifications for reactions to messages you send",
                style: TextStyle(fontSize: 13),
              ),
              trailing: Switch(value: false, onChanged: (v) {}),
            ),
            customBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Calls",
                style: TextStyle(fontSize: 11.7, color: Colors.grey),
              ),
            ),
            const ListTile(
              title: Text(
                "Ringtone",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Default(287)",
                style: TextStyle(fontSize: 13),
              ),
            ),
            ListTile(
              onTap: () {
                showVibrateOptions();
              },
              title: const Text(
                "Vibrate",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: const Text(
                "Default",
                style: TextStyle(fontSize: 13),
              ),
            ),
          ]),
        ),
      )),
    );
  }

  showVibrateOptions() {
    showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.only(left: 20, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        customBox(height: 20),
                        const Text(
                          "Vibrate",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        customBox(height: 10),
                        SingleChildScrollView(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: vibrationOptions.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Radio(
                                      value: true,
                                      groupValue: -1,
                                      onChanged: (v) {}),
                                  customBox(width: 10),
                                  Text(
                                    vibrationOptions[index],
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              );
                            },
                          ),
                        )
                      ])));
        });
  }

  showLightOptions() {
    showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.only(left: 20, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        customBox(height: 20),
                        const Text(
                          "Light",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        customBox(height: 10),
                        SingleChildScrollView(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: colors.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Radio(
                                      value: true,
                                      groupValue: -1,
                                      onChanged: (v) {}),
                                  customBox(width: 10),
                                  Text(
                                    colors[index],
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              );
                            },
                          ),
                        )
                      ])));
        });
  }
}
