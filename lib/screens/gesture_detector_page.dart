import 'package:flutter/material.dart';

//Etraftaki hareketleri algılar, istediğimiz bir alanı button gibi yapabiliriz.

class GestureDetectorPage extends StatefulWidget {
  GestureDetectorPage({Key key}) : super(key: key);

  @override
  _GestureDetectorPageState createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  String message = "BANA TIKLA";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gesture Detector"),
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              print("on tap");
              message = "on tap olayı gerçekleşti";
            });
          },
          onDoubleTap: () {
            setState(() {
              print("on double tap");
              message = "on double tap olayı gerçekleşti";
            });
          },
          onLongPress: () {
            setState(() {
              print("on long press");
              message = "on long press olayı gerçekleşti";
            });
          },
          child: Center(
            child: Container(
              width: 500,
              height: 500,
              color: Colors.green.shade100,
              child: Center(
                child: Text(
                  "$message",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ));
  }
}
