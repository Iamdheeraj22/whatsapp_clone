class ChatModel {
  String name;
  String lastMsg;
  String time;
  bool isGroup;
  bool allRead;
  bool? isContact;
  String? bio;
  ChatModel(this.name, this.lastMsg, this.time, this.isGroup, this.allRead,
      [this.isContact = false, this.bio = ""]);
}
