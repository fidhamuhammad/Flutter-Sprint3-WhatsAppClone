import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
// import 'package:whatsapp/models/chat_status.dart';
import 'package:whatsapp/ui/pages/chat_page/chat_tile.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key,});

  List<ChatModel> chatList = [
    ChatModel(
      avatar: 'assets/images/imgs1.jpg',
      name: "cybersquare flutter team",
      isGroup: true,
      updatedAt: '3.00 pm',
      message: "Haai",
      // status: "last seen 3 min ago",
    ),
    ChatModel(
      avatar: 'assets/images/imgs2.jpg',
      name: "john",
      isGroup: false,
      updatedAt: "9.00 pm",
      message: "hello",
      // status: "last seen 4 min ago",
    ),
    ChatModel(
      avatar: 'assets/images/imgs3.jpg',
      name: "Family",
      isGroup: true,
      updatedAt: "7.00 am",
      message: "Good morning",
      // status: "online",
    ),
    ChatModel(
      avatar: 'assets/images/imgs4.jpg',
      name: "Emily",
      isGroup: false,
      updatedAt: "7.00 am",
      message: "Good morning",
      // status: "online",
    ),
    ChatModel(
      avatar: 'assets/images/imgs5.jpg',
      name: "Minha",
      isGroup: false,
      updatedAt: "7.00 am",
      message: "Good morning",
      // status: "online",
    ),
    ChatModel(
      avatar: 'assets/images/imgs6.jpg',
      name: "Kanishka",
      isGroup: false,
      updatedAt: "7.00 am",
      message: "Good morning",
      // status: "online",
    ),
    ChatModel(
      avatar: 'assets/images/imgs7.jpg',
      name: "fidha",
      isGroup: false,
      updatedAt: "7.00 am",
      message: "Good morning",
      // status: "online",
    ),
    ChatModel(
      avatar: 'assets/images/imgs8.jpg',
      name: "vinsha",
      isGroup: false,
      updatedAt: "7.00 am",
      message: "Good morning",
      // status: "online",
    ),
    ChatModel(
      avatar: 'assets/images/imgs9.jpg',
      name: "Anjali",
      isGroup: false,
      updatedAt: "7.00 am",
      message: "Good morning",
      // status: "online",
    ),
    ChatModel(
      avatar: 'assets/images/imgs10.jpg',
      name: "Mamma",
      isGroup: false,
      updatedAt: "7.00 am",
      message: "Good morning",
      // status: "online",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          return ChatTile(
            chatdata: chatList[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}
