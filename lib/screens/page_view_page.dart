import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  PageViewPage({Key key}) : super(key: key);

  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View Kullanımı'),
        centerTitle: true,
      ),
      body: PageView(
        scrollDirection: Axis.horizontal, //Kaydırma Yönü
        children: [
          Container(
            child: Text('SAYFA -1'),
            color: Colors.blue[200],
          ),
          Container(
            child: Text('SAYFA -2'),
            color: Colors.red[200],
          ),
          Container(
            child: Text('SAYFA -3'),
            color: Colors.orange[200],
          ),
        ],
      ),
    );
  }
}
