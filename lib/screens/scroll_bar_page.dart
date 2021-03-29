import 'package:flutter/material.dart';

class ScrollBarPage extends StatefulWidget {
  ScrollBarPage({Key key}) : super(key: key);

  @override
  _ScrollBarPageState createState() => _ScrollBarPageState();
}

class _ScrollBarPageState extends State<ScrollBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thickness: 5,

        // Child can also be SingleChildScrollView, GridView, etc.
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Index $index'),
            );
          },
        ),
      ),
    );
  }
}
