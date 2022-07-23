import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/ContactCard.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';

class SelectContactsPage extends StatefulWidget {
  SelectContactsPage({Key? key}) : super(key: key);

  @override
  State<SelectContactsPage> createState() => _SelectContactsPageState();
}

class _SelectContactsPageState extends State<SelectContactsPage> {
  List<ChatModel>? contactList = [
    ChatModel("Mahendra Bahubali", "Hii , dude", "15:09", false, true, false,
        "Hello Friends"),
    ChatModel(
        "Situ", "Hii , dude", "15:09", false, false, true, "Hello Friends"),
    ChatModel("Mongodb Developers", "Hii ,all developers", "15:09", true, false,
        false, "Hello Friends"),
    ChatModel("Google Developers", "Hii , buddies", "15:09", false, true, true,
        "Hello Friends"),
    ChatModel(
        "Bahubali", "Hii , dude", "15:09", false, true, true, "Hello Friends"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("Invite a friend")),
              PopupMenuItem(child: Text("Contacts")),
              PopupMenuItem(child: Text("Refresh")),
              PopupMenuItem(child: Text("Help")),
            ];
          })
        ],
        title: Text(
          "Select Contacts",
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 15),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.group,
                        color: Colors.white,
                      ),
                    ),
                    customBox(width: 15),
                    Text(
                      "New group",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              customBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 15),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    customBox(width: 15),
                    const Text(
                      "New contact",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.qr_code,
                          size: 35,
                        ))
                  ],
                ),
              ),
              customBox(height: 25),
              const Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Text(
                  "Contacts on Whatsapp",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 143, 142, 142)),
                ),
              ),
              customBox(height: 10),
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: contactList!.length,
                itemBuilder: (context, index) {
                  return ContactCard(
                    chatModel: contactList![index],
                  );
                },
              ),
              customBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Text(
                  "Invite to Whatsapp",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 143, 142, 142)),
                ),
              ),
              customBox(height: 10),
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: contactList!.length,
                itemBuilder: (context, index) {
                  return InviteContactCard(
                    chatModel: contactList![index],
                  );
                },
              ),
              customBox(height: 10),
              //Share invite link
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "Share invite link",
                    style: TextStyle(fontSize: 15),
                  ),
                  leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color.fromARGB(96, 160, 157, 157),
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 28,
                      )),
                ),
              ),
              customBox(height: 15),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "Contacts help",
                    style: TextStyle(fontSize: 15),
                  ),
                  leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color.fromARGB(96, 160, 157, 157),
                      child: Icon(
                        Icons.question_mark,
                        color: Colors.white,
                        size: 28,
                      )),
                ),
              ),
              customBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
