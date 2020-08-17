import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  NotificationPageState createState() => NotificationPageState();
}

class NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'การแจ้งเตือน',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontFamily: 'Prompt',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        backgroundColor: Colors.deepOrange[100],
        elevation: 0,
      ),
    );
  }
}
