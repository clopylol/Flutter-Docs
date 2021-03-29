import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Navigator.pushNamed kullanıldı.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Anasayfa',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: 1,
                  child: Icon(Icons.clear),
                  onPressed: () {
                    Navigator.pushNamed(context, 'hatalıyol');
                  },
                ),
                SizedBox(
                  width: 25.0,
                ),
                FloatingActionButton(
                  heroTag: 2,
                  child: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/secondRoute');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
