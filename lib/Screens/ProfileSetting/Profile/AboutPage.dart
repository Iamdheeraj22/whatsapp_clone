import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var bios = ["If you want to peace, so prepare for war."];
  var defaultBio = "If you want to peace, so prepare for war.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: true,
        title: const Text(
          "About",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton(onSelected: (index) {
            if (index == 1) {
              bios.clear();
              setState(() {
                defaultBio = "If you want to peace, so prepare for war.";
              });
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(value: 1, child: Text("Delete all")),
            ];
          })
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 17),
              child: Text(
                "Currently set to",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
            customBox(height: 10),
            ListTile(
              onTap: () {
                openBottomsheet();
              },
              title: Text(
                defaultBio,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              trailing: const Icon(
                Icons.edit,
                color: Colors.teal,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 17),
              child: Text(
                "Select About",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
            customBox(height: 10),
            ListView.builder(
                itemCount: bios.length,
                shrinkWrap: true,
                itemBuilder: (itemBuilder, index) {
                  return ListTile(
                    onTap: () {
                      setState(() {
                        defaultBio = bios[index];
                      });
                    },
                    title: Text(
                      bios[index],
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  );
                })
          ],
        ),
      )),
    );
  }

  openBottomsheet() {
    var coounterNumber = "";
    showModalBottomSheet(
        isScrollControlled: true,
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
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("About"),
                    ),
                    subtitle: TextField(
                        onChanged: (v) {
                          state(() {
                            coounterNumber = v;
                          });
                        },
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                          ),
                          suffix: Text(
                            coounterNumber.length.toString(),
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.5),
                          ),
                        )),
                    trailing: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: IconButton(
                        icon: Icon(Icons.emoji_emotions),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  customBox(height: 15),
                  Row(
                    children: [
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "CANCEL",
                            style: TextStyle(fontSize: 14, color: Colors.teal),
                          )),
                      customBox(width: 20),
                      TextButton(
                          onPressed: () {
                            state(() {
                              bios.add(coounterNumber.toString());
                            });
                            Navigator.pop(context);
                          },
                          child: Text(
                            "SAVE",
                            style: const TextStyle(
                                fontSize: 14, color: Colors.teal),
                          )),
                      customBox(width: 10),
                    ],
                  )
                ],
              ),
            );
          });
        });
  }
}
