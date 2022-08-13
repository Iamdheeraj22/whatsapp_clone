import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class HelpPage extends StatefulWidget {
  HelpPage({Key? key}) : super(key: key);
  @override
  State<HelpPage> createState() => _HelpPaState();
}

class _HelpPaState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          "Help",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.question_mark,
                    size: 20,
                  )),
              title: const Text("Help Center"),
            ),
            ListTile(
                onTap: () {},
                leading: const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(
                    Icons.group,
                    size: 25,
                  ),
                ),
                title: const Text("Conta"),
                subtitle: const Text(
                  "Questions?Need help?",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                )),
            ListTile(
              onTap: () {},
              leading: Image.asset("assets/excel.png", height: 30),
              title: const Text("Terms and Privacy Policy"),
            ),
            ListTile(
              onTap: () {},
              title: const Center(
                  child: Text("Yearly reminder of our Terms of Service")),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.info,
                size: 30,
              ),
              title: const Text("App info"),
            )
          ],
        ),
      ),
    );
  }
}
