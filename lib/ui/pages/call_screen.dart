import 'package:flutter/material.dart';
import 'package:whatsapp/ui/pages/callpage/call_details.dart';

class CallPage extends StatefulWidget {
  const CallPage({
    super.key,
  });

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              onPressed: () {},
              backgroundColor: Colors.greenAccent[900],
              elevation: 5,
              child: Icon(Icons.add_call),
            ),
          ),
        ],
      ),
      body: 
      CallDetailsPage(),
           
    );
  }
}
