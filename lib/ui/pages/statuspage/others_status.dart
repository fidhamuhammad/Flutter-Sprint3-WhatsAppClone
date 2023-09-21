
import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_status.dart';
import 'package:whatsapp/ui/pages/status_screen.dart';
 
 

class OthersStatus extends StatelessWidget {
   OthersStatus({
    Key? key,
    required this.status
   
  }) : super(key: key);

  ChatStatus status;


  @override
  Widget build(BuildContext context) {
    return ListTile(

      //  onTap: (){
      //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => StatusPage(: status),));
      // },

      leading: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(status.avatar),
        ),
         title: Text(
           status.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          status.time,
          style: TextStyle(color: Colors.grey),
        ),


     
    );
  }
}

