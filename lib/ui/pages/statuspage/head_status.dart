import 'package:flutter/material.dart';

class HeadOwnStatus extends StatelessWidget {
  const HeadOwnStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/images/user1.jpg'),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 39, 136, 103),
            radius: 10,
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
              ),
          ),
        )
      ],
      ),
      title: Text(
        'My status',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text('Tap to add status update',
      style: TextStyle(color: Colors.grey[600], fontSize: 15),
      ),
    );
  }
}