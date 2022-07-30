import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Model/CountryModel.dart';
import 'package:whatsapp_clone/Screens/CountryPage.dart';
import 'package:whatsapp_clone/Screens/VerificationPage.dart';

class LoginPageScreen extends StatefulWidget {
  LoginPageScreen({Key? key}) : super(key: key);
  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  String countryName = "India";
  String countryCode = "+91";
  String phoneNumber = "";
  TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Enter your phone number",
          style: TextStyle(color: Colors.teal),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("View contact")),
                ];
              })
        ],
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Whatsapp will send an sms message to verify your number",
                    style: TextStyle(fontSize: 13.5),
                  ),
                  customBox(height: 10),
                  Text(
                    "What's my number?",
                    style: TextStyle(fontSize: 12.8, color: Colors.cyan[800]),
                  ),
                  customBox(height: 15),
                  customCountryCodePicker(),
                  customBox(height: 10),
                  countryCodePhoneNumber(),
                  customBox(height: 20),
                  Text(
                    "Carrier charges may apply",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  showVerifyingDialog();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent[400],
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "NEXT",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customCountryCodePicker() {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => CountryPage(
                        countryData: countryData,
                      )));
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.teal, width: 1.8))),
              width: phoneWidth(context) / 1.5,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Center(
                      child: Text(
                        countryName,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ],
        ));
  }

  Widget countryCodePhoneNumber() {
    return Container(
      width: phoneWidth(context) / 1.5,
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.teal, width: 1.8))),
            padding: const EdgeInsets.symmetric(vertical: 5),
            width: 70,
            child: Row(
              children: [
                const Text(
                  "+",
                  style: TextStyle(fontSize: 18),
                ),
                customBox(width: 20),
                Text(
                  countryCode.substring(1),
                )
              ],
            ),
          ),
          customBox(width: 10),
          Container(
            height: 33,
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.teal, width: 1.8))),
            width: phoneWidth(context) / 1.5 - 80,
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                phoneNumber = value.toString();
              },
              controller: _phoneController,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }

  void countryData(CountryModel model) {
    setState(() {
      countryName = model.name;
      countryCode = model.code;
    });
    Navigator.pop(context);
  }

  showVerifyingDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            content: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 210,
              width: 500,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "We will verifying the phone number:",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    customBox(height: 25),
                    Text(countryCode + "\t\t\t\t\t" + phoneNumber),
                    customBox(height: 20),
                    Text(
                      "is the OK, or would you like to edit the number?",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    customBox(height: 5),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "EDIT",
                            style: TextStyle(color: Colors.teal, fontSize: 17),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerificationPage(
                                          countryCode: countryCode,
                                          phoneNumber: phoneNumber,
                                        )));
                          },
                          child: Text(
                            "OK",
                            style: TextStyle(color: Colors.teal, fontSize: 17),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
