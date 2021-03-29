import 'package:flutter/material.dart';

class ActionChipPage extends StatefulWidget {
  ActionChipPage({Key key}) : super(key: key);

  @override
  _ActionChipPageState createState() => _ActionChipPageState();
}

class _ActionChipPageState extends State<ActionChipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text('Action Ship'),
        ),
        body: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 220.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1521782462922-9318be1cfd04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80")))),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    'Welcome Home',
                    style: TextStyle(color: Colors.black, fontSize: 24.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    'Monday 18:00 PM, Mostly Sunny',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 20.0),
                  ),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    spacing: 6.0,
                    children: [
                      ActionChip(
                        avatar: Icon(
                          Icons.lightbulb,
                          color: Colors.orange,
                        ),
                        label: Text('Turn on Lights'),
                        backgroundColor: Color(0xffededed),
                        labelStyle: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Choose the Color'),
                                actions: [
                                  FlatButton(
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  FlatButton(
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  FlatButton(
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      ActionChip(
                        avatar: Icon(
                          Icons.lock_clock,
                          color: Color(0xff4422ee),
                        ),
                        backgroundColor: Color(0xffededed),
                        labelStyle: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                        label: Text('Set Alarm'),
                        onPressed: () {
                          //set Alarm
                        },
                      ),
                      ActionChip(
                        avatar: Icon(Icons.phone, color: Color(0xffe52d27)),
                        backgroundColor: Color(0xffededed),
                        labelStyle: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                        label: Text('Call Mike'),
                        onPressed: () {
                          //Call Mike
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
