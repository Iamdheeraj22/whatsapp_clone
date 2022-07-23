import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class ContactsHelpPage extends StatefulWidget {
  ContactsHelpPage({Key? key}) : super(key: key);

  @override
  State<ContactsHelpPage> createState() => _ContactsHelpPageState();
}

class _ContactsHelpPageState extends State<ContactsHelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contacts help",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "If some of your friends don't appear in the contacts list,we\nrecommended the following steps:",
                style: TextStyle(fontSize: 14),
              ),
              customBox(height: 10),
              const Text("\u2022  "
                  "Make sure that your friend's phone number in your address book"),
              customBox(height: 10),
              const Text("\u2022  "
                  "Make sure that your friend is using WhatsApp Messenger"),
            ],
          )),
    );
  }
}
