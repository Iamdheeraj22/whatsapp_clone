import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/Model/GroupMember.dart';

class GroupMemberCard extends StatelessWidget {
  GroupMember groupMember;
  GroupMemberCard({Key? key, required this.groupMember}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        child: Stack(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 30,
              child: Icon(
                Icons.person,
                size: 33,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  decoration: groupMember.isSelect
                      ? BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(50))
                      : null,
                  child: groupMember.isSelect
                      ? const CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(
                            Icons.done,
                            size: 15,
                          ),
                        )
                      : null),
            )
          ],
        ),
      ),
      title: Text(
        groupMember.name,
        style: const TextStyle(fontSize: 15),
      ),
      subtitle: Text(
        groupMember.bio.toString(),
        style: const TextStyle(fontSize: 13),
      ),
    );
  }
}

class RoundGroupMemberCard extends StatelessWidget {
  GroupMember groupMember;
  RoundGroupMemberCard({Key? key, required this.groupMember}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7, right: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            child: Stack(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 30,
                  child: Icon(
                    Icons.person,
                    size: 33,
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(50)),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.blueAccent,
                        child: Icon(
                          Icons.close,
                          size: 15,
                        ),
                      )),
                )
              ],
            ),
          ),
          customBox(height: 4),
          Text(groupMember.name)
        ],
      ),
    );
  }
}
