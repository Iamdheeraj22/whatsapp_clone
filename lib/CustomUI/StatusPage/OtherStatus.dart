import 'package:flutter/material.dart';

class OtherStatus extends StatelessWidget {
  String name = "";
  String time = "";
  OtherStatus({Key? key,required this.name,required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 28,
        child: Icon(Icons.person),
      ),
      title: Text(
       name,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
      subtitle: Text(
        time,
        style: TextStyle(fontSize: 14, color: Colors.black38),
      ),
    );
  }
}
