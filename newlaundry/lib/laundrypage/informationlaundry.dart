import 'package:flutter/material.dart';
import 'package:newlaundry/widgets/pickimage.dart';
// import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class InformationLaundry extends StatefulWidget {
  @override
  InformationLaundryState createState() => InformationLaundryState();
}

class InformationLaundryState extends State<InformationLaundry> {
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
              'เพิ่มรายละเอียดร้าน',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontFamily: 'Prompt',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30, width: 30),
          Container(
            child: PickImage(),
          ),
          SizedBox(height: 30, width: 30),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'ชื่อร้าน',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Prompt',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'ชื่อร้าน',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Prompt',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
