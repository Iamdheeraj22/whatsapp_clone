import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class PrivacyOptionPage extends StatefulWidget {
  String title = "";
  String type = "";
  PrivacyOptionPage({Key? key, required this.title, required this.type})
      : super(key: key);

  @override
  State<PrivacyOptionPage> createState() => _PrivacyOptionPageState();
}

class _PrivacyOptionPageState extends State<PrivacyOptionPage> {
  var optionList = ["Everyone", "My contacts", "My contats except..", "Nobody"];
  var groupValue = -1;
  var isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                getString(widget.type),
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            customBox(height: 15),
            optionListBuilder(),
            customBox(height: 15),
            Container(
              child: isShow
                  ? Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        selectedText(),
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  : Container(),
            )
          ],
        )),
      ),
    );
  }

  String getString(String type) {
    if (type == "0") {
      isShow = true;
      return "Who can see my Last Seen";
    } else if (type == "1") {
      isShow = false;
      return "Who can see my Profile Photo";
    } else if (type == "2") {
      isShow = false;
      return "Who can see my about";
    } else if (type == "3") {
      isShow = true;
      return "Who can see my status";
    } else if (type == "4") {
      isShow = true;
      return "Who can add me to groups";
    }
    return "";
  }

  optionListBuilder() {
    return ListView.builder(
        itemCount: optionList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return RadioListTile(
              activeColor: Colors.teal,
              title: Text(optionList[index]),
              value: index,
              groupValue: groupValue,
              onChanged: (onChanged) {
                setState(() {
                  groupValue = index;
                });
              });
        });
  }

  String selectedText() {
    if (widget.type == "0") {
      return "If you don't share your Last Seen, you won't be able  to see other people's Last Seen.";
    } else if (widget.type == "3") {
      return "Changes to your privacy settings won't status update that you send already.";
    } else if (widget.type == "4") {
      return "Admins who can't add you to a group chat will have the option of inviting you privately insted.";
    }
    return "";
  }
}
