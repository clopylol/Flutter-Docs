import 'package:flutter/material.dart';

class ChipPage extends StatefulWidget {
  ChipPage({Key key}) : super(key: key);

  @override
  _ChipPageState createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipPage> {
  String name1 = 'Berkay';
  String name2 = 'Salih';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip Using'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Chip(
              label: Text(name1),
              avatar: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  name1[0],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Chip(
              label: Text(
                name2,
                style: TextStyle(color: Colors.white),
              ),
              avatar: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  name2[0],
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ),
              backgroundColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
