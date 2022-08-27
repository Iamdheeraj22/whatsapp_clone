import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Util/Constants.dart';

class FingerPrintLockPage extends StatefulWidget {
  FingerPrintLockPage({Key? key}) : super(key: key);

  @override
  State<FingerPrintLockPage> createState() => _FingerPrintLockPageState();
}

class _FingerPrintLockPageState extends State<FingerPrintLockPage> {
  var isEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          "Fingerprint Lock",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: ListTile(
            title: const Text("Unlock with Fingerprint"),
            subtitle: const Text(fingerprintTitle),
            trailing: Switch(
              onChanged: (v) {
                setState(() {
                  isEnabled = !isEnabled;
                });
              },
              activeColor: Colors.teal,
              value: isEnabled,
            ),
          )),
    );
  }
}
