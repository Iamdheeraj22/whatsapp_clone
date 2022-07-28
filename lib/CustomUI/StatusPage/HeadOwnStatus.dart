import 'package:flutter/material.dart';

class HeadOwnStatus extends StatelessWidget {
  const HeadOwnStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        child: Stack(children: [
          CircleAvatar(
            radius: 30,
            child: Icon(Icons.person),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.greenAccent[700],
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              ),
            ),
          )
        ]),
      ),
      title: Text(
        "My status",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
      ),
      subtitle: Text(
        "Tap to add status update",
        style: TextStyle(color: Colors.black38),
      ),
    );
  }
}
