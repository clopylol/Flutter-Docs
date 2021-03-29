import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  SnackBarPage({Key key}) : super(key: key);

  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Using'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Show SnackBar'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Selam Ben Snack Bar'),
                    duration: Duration(milliseconds: 1500),
                    action: SnackBarAction(
                      label: 'Action',
                      onPressed: () {},
                    ),
                  ),
                );
              },
            ),
            Divider(),
            ElevatedButton(
              child: Text('Show SnackBar Radius'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Selam Ben Snack Bar'),
                    duration: Duration(milliseconds: 1500),
                    width: 280,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    action: SnackBarAction(
                      label: 'Action',
                      onPressed: () {},
                    ),
                  ),
                );
              },
            ),
            Divider(),
            ElevatedButton(
              child: Text('Show SnackBar Radius - 2 '),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Selam Ben Snack Bar',
                    ),
                    duration: Duration(milliseconds: 1500),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    action: SnackBarAction(
                      label: 'Action',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
