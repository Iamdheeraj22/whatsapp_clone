import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';

class OwnMessageCard extends StatelessWidget {
  const OwnMessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: phoneWidth(context) - 45),
        child: Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Color(0xffdcf8c6),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 105, top: 10, bottom: 15),
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              bottom: 4,
              right: 10,
              child: Row(
                children: [
                  Text(
                    "15:00 PM",
                    style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.done,
                    size: 20,
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
