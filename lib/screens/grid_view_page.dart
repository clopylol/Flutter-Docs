import 'package:flutter/material.dart';

class GridViewExamplePage extends StatefulWidget {
  GridViewExamplePage({Key key}) : super(key: key);

  @override
  _GridViewExamplePageState createState() => _GridViewExamplePageState();
}

class _GridViewExamplePageState extends State<GridViewExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Kullanımı'),
      ),
      body: Container(
          child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return Container(
            child: Card(
              color: Colors.blue,
            ),
          );
        }),
      )),
    );
  }
}
