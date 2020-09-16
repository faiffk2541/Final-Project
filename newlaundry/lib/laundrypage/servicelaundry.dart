import 'package:flutter/material.dart';

class ServiceLaundry extends StatefulWidget {
  @override
  ServiceLaundryState createState() => ServiceLaundryState();
}

class ServiceLaundryState extends State<ServiceLaundry> {
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
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'บริการของร้าน',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontFamily: 'Prompt',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 100),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 120,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        padding: EdgeInsets.all(10),
                        color: Colors.redAccent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          'แก้ไข',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Prompt',
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Container(
                      width: 120,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        padding: EdgeInsets.all(10),
                        color: Colors.redAccent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          'บันทึก',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Prompt',
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
