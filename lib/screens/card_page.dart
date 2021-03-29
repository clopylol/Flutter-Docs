import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  CardPage({Key key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Page')),
      body: Center(
        child: Card(
          color: Colors.orange[300],
          //InkWell verebiliriz carda.
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  Icons.music_note,
                  size: 50,
                ),
                title: Text('Halil İbrahim Türküsü'),
                subtitle: Text('Musa Eroğlu'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text('BİLET AL'),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  TextButton(
                    child: Text('DİNLE'),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
