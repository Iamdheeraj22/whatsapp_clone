class ChatModel {
  String name;
  String lastMsg;
  String time;
  bool isGroup;
  bool allRead;
  ChatModel({
    required this.name,
    required this.lastMsg,
    required this.time,
    required this.isGroup,
    required this.allRead
  });
}
