import 'package:flutter/material.dart';

class InkWellPage extends StatefulWidget {
  InkWellPage({Key key}) : super(key: key);

  @override
  _InkWellPageState createState() => _InkWellPageState();
}

class _InkWellPageState extends State<InkWellPage> {
  int _volumeUp = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ink Well'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Icon(Icons.volume_up, size: 70),
              splashColor: Colors.green,
              highlightColor: Colors.blue,
              onTap: () {
                setState(() {
                  _volumeUp += 5;
                });
              },
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              _volumeUp.toString(),
              style: TextStyle(fontSize: 48),
            ),
            Padding(padding: EdgeInsets.all(10)),
            InkWell(
              child: Icon(Icons.volume_down, size: 70),
              onTap: () {
                setState(() {
                  _volumeUp > 5
                      ? _volumeUp -= 5
                      : Text('Ses Sıfırın Altına Düşemez');
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
