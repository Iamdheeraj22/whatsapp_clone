import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/account/PrivacyPages/BlockContactsPage.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/account/PrivacyPages/DefaultMessageTimer.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/account/PrivacyPages/FingerprintLockPage.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/account/PrivacyPages/LiveLocationPage.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/account/PrivacyPages/PrivacyOptionPage.dart';

class PrivacySettingPage extends StatefulWidget {
  PrivacySettingPage({Key? key}) : super(key: key);
  @override
  State<PrivacySettingPage> createState() => _PrivacySettingPageState();
}

class _PrivacySettingPageState extends State<PrivacySettingPage> {
  var optionsList = ["Last seen", "Profile Photo", "About", "Status"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          "Privacy",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customBox(height: 10),
              const ListTile(
                title: Text(
                  "Who can see my personal info",
                  style: TextStyle(
                    fontSize: 13.5,
                  ),
                ),
                subtitle: Text(
                  "If you don't share your Last seen, you won't able to see other people's last Seen",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              customBox(height: 5),
              pricyOptions(),
              customBox(height: 5),
              ListTile(
                title: const Text(
                  "Read receipts",
                  style: TextStyle(
                    fontSize: 13.5,
                  ),
                ),
                subtitle: const Text(
                  "If turned off, you won't send or receive Read receipts. Read receipts are always sent for group chats.",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: Switch(value: false, onChanged: (v) {}),
              ),
              customBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Disappearing messages",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              customBox(height: 10),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => DefaultMessageTimer()));
                },
                title: const Text(
                  "Default messages timer",
                  style: TextStyle(
                    fontSize: 13.5,
                  ),
                ),
                subtitle: const Text(
                  "Start new chats with dissappearing messages set \nto your timer",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "Off",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              //Groups , Block , Live locations,Fingure print lock
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) =>
                              PrivacyOptionPage(title: "Groups", type: "4")));
                },
                title: Text(
                  "Groups",
                  style: TextStyle(
                    fontSize: 13.5,
                  ),
                ),
                subtitle: const Text(
                  "Nobody",
                  style: TextStyle(
                    fontSize: 12.5,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => LiveLocationPage()));
                },
                title: const Text(
                  "Live Location",
                  style: TextStyle(
                    fontSize: 13.5,
                  ),
                ),
                subtitle: const Text(
                  "none",
                  style: TextStyle(
                    fontSize: 12.5,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => BlockContactsPage()));
                },
                title: const Text(
                  "Blocked Contacts",
                  style: TextStyle(
                    fontSize: 13.5,
                  ),
                ),
                subtitle: const Text(
                  "1",
                  style: TextStyle(
                    fontSize: 12.5,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => FingerPrintLockPage()));
                },
                title: Text(
                  "Fingerprint Lock",
                  style: TextStyle(
                    fontSize: 13.5,
                  ),
                ),
                subtitle: const Text(
                  "Disabled",
                  style: TextStyle(
                    fontSize: 12.5,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  pricyOptions() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: optionsList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => PrivacyOptionPage(
                          title: optionsList[index], type: index.toString())));
            },
            title: Text(
              optionsList[index],
              style: const TextStyle(
                fontSize: 13.5,
              ),
            ),
            subtitle: const Text(
              "Nobody",
              style: TextStyle(
                fontSize: 12.5,
              ),
            ),
          );
        });
  }
}
