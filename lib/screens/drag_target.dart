import 'dart:math';

import 'package:flutter/material.dart';

class DragTargetPage extends StatefulWidget {
  DragTargetPage({Key key}) : super(key: key);

  @override
  _DragTargetPageState createState() => _DragTargetPageState();
}

@override
class _DragTargetPageState extends State<DragTargetPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  Random r = Random();

  var data = 5;
  Color color = Color(0xff638b25);

  createRandom() {
    setState(() {
      data = r.nextInt(9) + 1;
      color =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
      print(color);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Sürükle Bırak'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Draggable(
              data: data,
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.redAccent),
                ),
                child: Center(
                  child: Text(
                    "$data",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),
              feedback: Container(
                width: 75.0,
                height: 75.0,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.red[800], width: 2),
                ),
                child: Center(
                  child: Text(
                    "$data",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.greenAccent),
                  ),
                  child: DragTarget(
                    builder: (context, List<int> candidateData, rejectedData) {
                      print(candidateData);
                      return Center(
                        child: Text('Odd'),
                      );
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if (data % 2 != 0) {
                        scaffoldKey.currentState.showSnackBar(
                          SnackBar(
                            content: Text("Correct!"),
                            backgroundColor: Colors.green,
                            duration: Duration(milliseconds: 50),
                          ),
                        );
                        createRandom();
                      } else {
                        scaffoldKey.currentState.showSnackBar(
                          SnackBar(
                            content: Text('Wrong !'),
                            backgroundColor: Colors.red,
                            duration: Duration(milliseconds: 50),
                          ),
                        );
                      }
                    },
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: DragTarget(
                    builder: (context, List<int> candidateData, rejectedData) {
                      print(candidateData);
                      return Center(
                        child: Text('Even'),
                      );
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if (data % 2 == 0) {
                        scaffoldKey.currentState.showSnackBar(
                          SnackBar(
                            content: Text("Correct!"),
                            backgroundColor: Colors.green,
                            duration: Duration(milliseconds: 50),
                          ),
                        );
                        createRandom();
                      } else {
                        scaffoldKey.currentState.showSnackBar(
                          SnackBar(
                            content: Text('Wrong !'),
                            backgroundColor: Colors.red,
                            duration: Duration(milliseconds: 50),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
