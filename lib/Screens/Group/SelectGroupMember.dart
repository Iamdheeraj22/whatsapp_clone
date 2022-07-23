import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomUI.dart';
import 'package:whatsapp_clone/CustomUI/GroupMemberCard.dart';
import 'package:whatsapp_clone/Model/GroupMember.dart';

class SelectGroupMember extends StatefulWidget {
  SelectGroupMember({Key? key}) : super(key: key);
  @override
  State<SelectGroupMember> createState() => _SelectGroupMemberState();
}

class _SelectGroupMemberState extends State<SelectGroupMember> {
  List<GroupMember> allMembers = [
    GroupMember(name: "Alex", bio: "Hii , dude", id: 101),
    GroupMember(name: "Mike", bio: "Hii , dude", id: 102),
    GroupMember(name: "Gal Gadot", bio: "Hii , dude", id: 103),
    GroupMember(name: "The Rock", bio: "Hii , dude", id: 104),
    GroupMember(name: "Thor", bio: "Hii , dude", id: 105),
  ];
  List<GroupMember> selectedMembers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.arrow_forward,
          size: 30,
        ),
      ),
      appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "New Group",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Add participants",
                style: TextStyle(fontSize: 12),
              ),
            ],
          )),
      body: Container(
        height: phoneHeight(context),
        width: phoneWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: selectedMembers.isNotEmpty
                    ? Container(
                        height: 80,
                        child: ListView.builder(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: selectedMembers.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  for (var i = 0; i < allMembers.length; i++) {
                                    if (selectedMembers[index].id ==
                                        allMembers[i].id) {
                                      allMembers[i].isSelect = false;
                                    }
                                  }
                                  selectedMembers
                                      .remove(selectedMembers[index]);
                                });
                              },
                              child: RoundGroupMemberCard(
                                groupMember: selectedMembers[index],
                              ),
                            );
                          },
                        ),
                      )
                    : null),
            ListView.builder(
                itemCount: allMembers.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (allMembers[index].isSelect) {
                          selectedMembers.remove(allMembers[index]);
                        } else {
                          selectedMembers.add(allMembers[index]);
                        }
                        allMembers[index].isSelect =
                            !allMembers[index].isSelect;
                        print(selectedMembers);
                      });
                    },
                    child: GroupMemberCard(
                      groupMember: allMembers[index],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
