import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEAE9),
       appBar: AppBar(
          backgroundColor: const Color(0xFF6DC395), //Color(0xFFEBEAE9),
          elevation: 0,
             leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () => {
                    Navigator.pop(context)
                  }),
          toolbarHeight: 100,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Notifications',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
             
            ],
          ),
          actions: const [Padding(padding: EdgeInsets.all(10))],
        ),
        body: const Center(
          child: Text('You have no new notifications',
          style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold,
            color: Colors.black26
          ),),
        ),
    );
  }
}