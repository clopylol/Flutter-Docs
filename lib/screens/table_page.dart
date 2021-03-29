import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  TablePage({Key key}) : super(key: key);

  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Page'),
      ),
      body: Container(
        child: Table(
          border: TableBorder.all(color: Colors.lightBlueAccent, width: 2.0),
          children: [
            TableRow(children: [
              Text(
                "1",
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Berkay",
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "80",
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
            TableRow(children: [
              Text(
                "2",
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Salih",
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "88",
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
            TableRow(children: [
              Text(
                "3",
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Ertem",
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "50",
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
