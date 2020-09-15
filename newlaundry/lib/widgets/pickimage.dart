import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatefulWidget {
  @override
  PickImageState createState() => PickImageState();
}

class PickImageState extends State<PickImage> {
  File imageFile;

  var imageFiles = [];
  _openGallary(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
      this.imageFiles.add(picture);
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'ดำเนินการ',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Prompt',
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      'รูปภาพ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {
                      _openGallary(context);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    child: Text(
                      'กล้องถ่ายรูป',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {
                      _openCamera(context);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  // Widget _decideImageView() {
  //   if (imageFile == null) {
  //     return InkWell(
  //       onTap: () {
  //         _showChoiceDialog(context);
  //       },
  //       child: Image.asset('assets/plus.png', height: 90, width: 90),
  //     );
  //   } else {}
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30),
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Row(
              children: imageFiles.map(
            (url) => new InkWell(
              onTap: () {
                var index = imageFiles.indexOf(url);
                _settingModalBottomSheet(context, index);
              },
              child: Image.file(url, height: 100, width: 100),
            ),
          ).toList()),
          Column(
            children: [
              InkWell(
                child: Image.asset('assets/frame.png', height: 90, width: 90),
                onTap: () {
                  if (imageFiles.length > 2) {
                    print(imageFiles);
                  } else {
                    _showChoiceDialog(context);
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  void _settingModalBottomSheet(context, index) {
    print(index);
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.remove_red_eye),
                    title: new Text(
                      'ดู',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () => {}),
                new ListTile(
                    leading: new Icon(Icons.remove_circle),
                    title: new Text(
                      'ลบ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {
                      setState(() {
                        imageFiles.removeAt(index);
                        Navigator.of(context).pop();
                      });
                    }),
              ],
            ),
          );
        });
  }
}
