import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Util/Constants.dart';

class RequestAccountInfo extends StatefulWidget {
  RequestAccountInfo({Key? key}) : super(key: key);

  @override
  State<RequestAccountInfo> createState() => _RequestAccountInfoState();
}

class _RequestAccountInfoState extends State<RequestAccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          "Request Account Info",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            customBox(height: 25),
            Image.asset(
              "assets/request.png",
              height: 150,
              width: 150,
            ),
            customBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30),
              child: RichText(
                  text: const TextSpan(
                text: requestTitle,
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                    wordSpacing: 1.5),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Learn more', style: TextStyle(color: Colors.blue)),
                ],
              )),
            ),
            customBox(height: 20),
            ListTile(
              onTap: () {
                showProgresIndicator();
              },
              leading: Image.asset(
                "assets/excel.png",
                height: 35,
                width: 35,
                color: Colors.grey,
              ),
              title: const Text(
                "Request report",
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }

  showProgresIndicator() {
    showDialog(
        context: context,
        builder: (builder) {
          return Dialog(
            child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    const CircularProgressIndicator(
                      color: Colors.teal,
                    ),
                    customBox(width: 25),
                    const Text(
                      "Please wait..",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )),
          );
        });
  }
}
