import 'package:flutter/material.dart';

class RichTextPage extends StatefulWidget {
  RichTextPage({Key key}) : super(key: key);

  @override
  _RichTextPageState createState() => _RichTextPageState();
}

class _RichTextPageState extends State<RichTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rich TEXT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 18),
              children: [
                TextSpan(text: 'Bin atlı akınlarda,'),
                TextSpan(
                    text: 'çocuklar gibi',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
                TextSpan(text: 'şendik'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
