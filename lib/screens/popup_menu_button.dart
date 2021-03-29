import 'package:flutter/material.dart';

class PopupMenuButtonPage extends StatefulWidget {
  PopupMenuButtonPage({Key key}) : super(key: key);

  @override
  _PopupMenuButtonPageState createState() => _PopupMenuButtonPageState();
}

class Choice {
  Choice({this.name, this.icon});
  final String name;
  final IconData icon;
}

List<Choice> choices = <Choice>[
  Choice(name: 'Wi-Fi', icon: Icons.wifi),
  Choice(name: 'Bluetooth', icon: Icons.bluetooth),
  Choice(name: 'Battery', icon: Icons.battery_alert),
  Choice(name: 'Storage', icon: Icons.storage),
];

class _PopupMenuButtonPageState extends State<PopupMenuButtonPage> {
  Choice _selectedOption = choices[0];

  void _select(Choice choice) {
    setState(() {
      _selectedOption = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Button'),
        actions: [
          PopupMenuButton(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.skip(0).map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: Text(choice.name),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ChoiceCard(
          choice: _selectedOption,
        ),
      ),
    );
  }
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline1;
    return Center(
      child: Card(
        color: Colors.blueAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(choice.icon, size: 120, color: textStyle.color),
            Text(
              choice.name,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
