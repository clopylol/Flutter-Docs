import 'package:flutter/material.dart';

class RefreshIndicatorPage extends StatefulWidget {
  RefreshIndicatorPage({Key key}) : super(key: key);

  @override
  _RefreshIndicatorPageState createState() => _RefreshIndicatorPageState();
}

class _RefreshIndicatorPageState extends State<RefreshIndicatorPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yukarı Kaydır Yenile"),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        child: ListView(
          children: _getItems(),
        ),
        onRefresh: _handleRefresh,
      ),
    );
  }

  List<Widget> _getItems() {
    var items = <Widget>[];
    for (int i = _count; i < _count + 4; i++) {
      var item = Column(
        children: [
          ListTile(
            title: Text("Item $i"),
          ),
          Divider(
            height: 2.0,
          )
        ],
      );

      items.add(item);
    }
    return items;
  }

  Future _handleRefresh() async {
    await Future.delayed(Duration(seconds: 1));

    setState(() {
      _count += 5;
    });

    return null;
  }
}
