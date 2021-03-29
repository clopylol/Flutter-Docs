import 'package:flutter/material.dart';

class InputChipPage extends StatefulWidget {
  InputChipPage({Key key}) : super(key: key);

  @override
  _InputChipPageState createState() => _InputChipPageState();
}

class _InputChipPageState extends State<InputChipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Chip'),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: _toContainer(),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
        ],
      ),
    );
  }

  Widget _toContainer() {
    return Wrap(
      spacing: 5.0,
      children: [
        Container(
          child: _profileChips("Scott Hill",
              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
        ),
        Container(
          child: _profileChips("Nick James",
              "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
        ),
        Container(
          child: _profileChips("Josh Wells",
              "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
        ),
      ],
    );
  }

  Widget _profileChips(String myName, String myImage) {
    return InputChip(
      avatar: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(myImage),
              )),
        ),
      ),
      label: Text(myName),
      labelStyle: TextStyle(
          color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
      onPressed: () {},
      onDeleted: () {},
    );
  }
}
