import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_status.dart';
import 'package:whatsapp/ui/pages/statuspage/head_status.dart';


class StatusPage extends StatefulWidget {
  const StatusPage({super.key,});
  
  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              backgroundColor: Color.fromARGB(255, 210, 244, 233),
              elevation: 8,
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Color.fromARGB(255, 39, 136, 103),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            onPressed: () {},
            backgroundColor: Colors.greenAccent[900],
            elevation: 5,
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            HeadOwnStatus(),
            Container(
              height: 33,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                child: 
                 Text(
                  'Recent updates',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),                 
                  
                ),                
              ),              
            ),           
            
         ],        
        ),
      ),
      
      
    
      


      
    );
  }
}





// SingleChildScrollView(
//         physics: ScrollPhysics(),
//         child: Column(
//           children: 
//           <Widget>[
//             ListTile(
//               title: Text('Status'),
//             ),
//             ListView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemCount: 180,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text('$index'),
//                   );
//                 })
//           ],
//         ),
//       ),