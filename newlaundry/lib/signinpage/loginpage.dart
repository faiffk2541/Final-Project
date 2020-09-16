import 'package:flutter/material.dart';
import 'package:newlaundry/navigationbar.dart';
import 'package:newlaundry/widgets/google_login.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            child: Center(
              child: Image.asset(
                'assets/pin.png',
                width: 40,
                height: 40,
              ),
            ),
          ),
          SizedBox(height: 50),
          Container(
            child: Center(
              child: Text(
                'LAUNDRY',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontFamily: 'Prompt',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Form(
              child: Container(
                height: 50,
                width: 330,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  //color: Colors.white
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    hintText: "อีเมล์",
                    icon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Center(
            child: Form(
              child: Container(
                height: 50,
                width: 330,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    hintText: "รหัสผ่าน",
                    icon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 70),
          Center(
            child: Container(
              width: 250,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavigationBarPage()),
                  );
                },
                padding: EdgeInsets.all(10),
                color: Colors.redAccent,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'เข้าสู่ระบบ',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Prompt',
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              '- หรือ -',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Prompt',
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: GoogleLogin(),
          )
        ],
      ),
    );
  }
}
