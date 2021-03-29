import 'package:flutter/material.dart';
import 'package:flutter_docs/screens/navigator_detail_page.dart';

class NavigatorHomePage extends StatelessWidget {
  const NavigatorHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigotor Kullanımı"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Navigator ile Geçiş"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavigatorDetailPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
