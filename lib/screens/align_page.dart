import 'package:flutter/material.dart';

class AlignPage extends StatefulWidget {
  AlignPage({Key key}) : super(key: key);

  @override
  _AlignPageState createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align Page'),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Align(
          alignment: Alignment.centerRight,
          //alignment: Alignment(0.60, -0.80),
          child: Text('Bin Atlı Akınlarda'),
        ),
      ),
    );
  }
}
