import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:newlaundry/signinpage/signinpage.dart'; //
import 'userpage/historypage.dart';
import 'userpage/homepage.dart';
import 'userpage/notificationpage.dart';
import 'userpage/profilepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final _pageActive = [
    HomePage(),
    HistoryPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SignInPage(),
      home: Scaffold(
        body: _pageActive[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          height: 60,
          items: <Widget>[
            Icon(Icons.access_time, size: 30, color: Colors.white),
            Icon(Icons.history, size: 30, color: Colors.white),
            Icon(Icons.notifications_active, size: 30, color: Colors.white),
            Icon(Icons.perm_identity, size: 30, color: Colors.white),
          ],
          color: Colors.redAccent[100],
          backgroundColor: Colors.deepOrange[100],
          buttonBackgroundColor: Colors.redAccent[100],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
        ),
      ),
    );
  }
}
