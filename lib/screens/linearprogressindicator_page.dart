import 'package:flutter/material.dart';

class LinearProgessIndicatorPage extends StatefulWidget {
  LinearProgessIndicatorPage({Key key}) : super(key: key);

  @override
  _LinearProgessIndicatorPageState createState() =>
      _LinearProgessIndicatorPageState();
}

class _LinearProgessIndicatorPageState
    extends State<LinearProgessIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linear Progress'),
      ),
      body: Column(
        children: [
          //Renk Geçişli
          Container(
            child: LinearProgressIndicator(
              backgroundColor: Colors.red,
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.amber,
              ),
              value: 0.8,
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),

          //
          //Tek
          Container(
            child: LinearProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
