import 'package:flutter/material.dart';
import 'package:whatsapp/ui/pages/call_screen.dart';
import 'package:whatsapp/ui/pages/camera_page.dart';
import 'package:whatsapp/ui/pages/chat_page.dart';
import 'package:whatsapp/ui/pages/status_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin{
      late TabController _controller;
      @override 
      void initState(){
        super.initState();
        _controller = TabController(length: 4,initialIndex: 1, vsync:this);
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('WhatsApp'),
      actions: [
        Row(
          
          children: [
            
            IconButton(
                icon: Icon(Icons.camera_alt_outlined, color: Colors.white,),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Camera(),));
                },
              ),
              
            
           
            // search icon
            IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.white)),


            // add space
            // const SizedBox(
            //   width: 10.00,
            // ),


            PopupMenuButton(color: Colors.white, onSelected:(value){
              print(value);
            }, itemBuilder: (BuildContext context){
              return const [
                 PopupMenuItem(value: 1, child: Text('New group')),
                 PopupMenuItem(value: 2, child: Text('New broadcast')),
                 PopupMenuItem(value: 3, child: Text('Linked devices')),
                 PopupMenuItem(value: 4, child: Text('Starred messages')),
                 PopupMenuItem(value: 5, child: Text('Payments')),
                 PopupMenuItem(value: 6, child: Text('Settings')),
              ];
            })
          ],
        ),
      ], 

      bottom: TabBar(
        tabs: const [
          // Tab(
          //   icon: Icon(
          //     Icons.camera_alt,
          //   ),
          // ),
          Icon(Icons.people,color: Colors.white,), 
              Text('Chat',
              style: TextStyle(color: Colors.white, fontSize: 18,),
              ),
               Text('Status',
               style: TextStyle(color: Colors.white, fontSize: 18,),
               ), 
              Text('Calls',
              style: TextStyle(color: Colors.white, fontSize: 18,),
              ),
          ],
          controller: _controller,
      ),
    ), 
    body: TabBarView(
      controller: _controller,
      children: [
        // Camera(),
        Text('community'),
        ChatPage(),
        StatusPage(),        
        CallPage(),
      ],
      ),
    
    );
  }
    }
