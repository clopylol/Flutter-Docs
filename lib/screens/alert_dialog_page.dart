import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  AlertDialogPage({Key key}) : super(key: key);

  @override
  _AlertDialogPageState createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Page'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: Text("Show alert Dialog 1 Box"),
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text("Alert Dialog Box"),
                      content: Text("You have raised a Alert Dialog Box"),
                      actions: <Widget>[
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Text("BUTTON"),
                        ),
                      ],
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text("Show alert Dialog 2 Box"),
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text("Alert Dialog Box"),
                      content: Text("You have raised a Alert Dialog Box"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Text("BUTTON-1"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Text("BUTTON-2"),
                        ),
                      ],
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text("Alert Dialog Text"),
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text("Alert Dialog Box"),
                      content: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              autofocus: true,
                              decoration: InputDecoration(
                                  labelText: 'Adınız ?',
                                  hintText: 'Lütfen Adınızı Girin'),
                              onChanged: (value) {
                                setState(() {
                                  text = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Text("BUTTON-1"),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
