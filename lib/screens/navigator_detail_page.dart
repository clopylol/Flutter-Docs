import 'package:flutter/material.dart';

class NavigatorDetailPage extends StatefulWidget {
  NavigatorDetailPage({Key key}) : super(key: key);

  @override
  _NavigatorDetailPageState createState() => _NavigatorDetailPageState();
}

class _NavigatorDetailPageState extends State<NavigatorDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigatorDetailPage"),
      ),
      body: Center(child: Text("NavigatorDetailPage'e HOŞGELDİN")),
    );
  }
}
