import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Screens/after_verification/ProfileInfo.dart';

class VerificationPage extends StatefulWidget {
  String phoneNumber = "";
  String countryCode = "";
  VerificationPage(
      {Key? key, required this.countryCode, required this.phoneNumber})
      : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

String? first = "", second = "", third = "", forth = "", fifth = "", sixth = "";

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Verifying your number",
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
                  PopupMenuItem(child: Text("Help")),
                ];
              })
        ],
      ),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customBox(height: 20),
                Text("Waiting to automatically detect an SMS sent to"),
                customBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${widget.countryCode}  ${widget.phoneNumber}",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "  Wrong number?",
                          style: TextStyle(color: Colors.teal),
                        )),
                  ],
                ),
                customBox(height: 25),
                otpField(),
                customBox(height: 20),
                Text(
                  "Enter 6-digit code",
                  style: TextStyle(color: Colors.grey),
                ),
                customBox(height: 20),
                Container(
                  width: phoneWidth(context) - 60,
                  child: Column(children: [
                    InkWell(
                      onTap: () {},
                      child: const ListTile(
                        leading: Icon(
                          Icons.message,
                          color: Colors.teal,
                        ),
                        title: Text(
                          "Resend SMS",
                          style: TextStyle(color: Colors.teal, fontSize: 16),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ListTile(
                        leading: Icon(
                          Icons.call,
                          color: Colors.teal,
                        ),
                        title: Text(
                          "Call me",
                          style: TextStyle(color: Colors.teal, fontSize: 16),
                        ),
                      ),
                    ),
                  ]),
                )
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (builder) => ProfileInfoPage()));
              },
              child: Container(
                color: Colors.teal,
                margin: EdgeInsets.only(bottom: 50),
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
                child: Text(
                  "Verify",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget otpField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 33,
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.teal, width: 1.8))),
          width: 30,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              first = value.toString();
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        customBox(width: 13),
        Container(
          height: 33,
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.teal, width: 1.8))),
          width: 30,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              second = value.toString();
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        customBox(width: 13),
        Container(
          height: 33,
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.teal, width: 1.8))),
          width: 30,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              third = value.toString();
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        customBox(width: 13),
        Container(
          height: 33,
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.teal, width: 1.8))),
          width: 30,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              forth = value.toString();
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        customBox(width: 13),
        Container(
          height: 33,
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.teal, width: 1.8))),
          width: 30,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              fifth = value.toString();
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        customBox(width: 13),
        Container(
          height: 33,
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.teal, width: 1.8))),
          width: 30,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              sixth = value.toString();
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}
