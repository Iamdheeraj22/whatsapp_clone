import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/ProfileSetting/ChangeNumber/NotifyChangeNumberPage.dart';

class ConfirmNumberPage extends StatefulWidget {
  ConfirmNumberPage({Key? key}) : super(key: key);

  @override
  State<ConfirmNumberPage> createState() => _ConfirmNumberPageState();
}

class _ConfirmNumberPageState extends State<ConfirmNumberPage> {
  var coounterNumber = "";
  var _oldController = "";
  var _newController = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.teal,
          automaticallyImplyLeading: true,
          title: const Text(
            "Change number",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          height: phoneHeight(context),
          width: phoneWidth(context),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customBox(height: 25),
                  Text("Enter your old phone number with country code:"),
                  customBox(height: 10),
                  TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                      onChanged: (v) {
                        setState(() {
                          _oldController = v.toString();
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: "old phone number",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                      )),
                  customBox(height: 20),
                  Text("Enter your new phone number with country code:"),
                  customBox(height: 10),
                  TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                      onChanged: (v) {
                        setState(() {
                          _newController = v.toString();
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: "new phone number",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                      )),
                ],
              ),
              InkWell(
                onHover: (v) {},
                onTap: () {
                  //showChooseMediaOptions();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => NotifyChangeNumberPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(3)),
                  child: const Text(
                    "NEXT",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              )
            ],
          ),
        )));
  }

  showChooseMediaOptions() {
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
                        Text(
                          "Please enter your phone number.",
                          style: const TextStyle(
                              fontSize: 12.5, fontWeight: FontWeight.bold),
                        ),
                        customBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "OK",
                                style: TextStyle(
                                    fontSize: 12.5, color: Colors.teal),
                              )),
                        )
                      ])));
        });
  }
}
