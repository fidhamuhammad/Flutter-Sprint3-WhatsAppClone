
import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/ui/pages/chat_page/chat_detailscreen.dart';

class ChatTile extends StatelessWidget {
   ChatTile({
    Key? key,
    required this.chatdata
   
  }) : super(key: key);

  ChatModel chatdata;


  @override
  Widget build(BuildContext context) {
    return ListTile(

       onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatDetails(chatdata: chatdata),));
      },

      leading: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(chatdata.avatar),
        ),
         title: Text(
           chatdata.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
           chatdata.message,
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Text(
          chatdata.updatedAt,
          style: TextStyle(color: Colors.grey),
        ),


     
    );
  }
}

