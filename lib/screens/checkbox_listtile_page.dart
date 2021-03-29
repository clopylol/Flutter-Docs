import 'package:flutter/material.dart';

class CheckBoxListTilePage extends StatefulWidget {
  CheckBoxListTilePage({Key key}) : super(key: key);

  @override
  _CheckBoxListTilePageState createState() => _CheckBoxListTilePageState();
}

class _CheckBoxListTilePageState extends State<CheckBoxListTilePage> {
  //List<bool> checked = [true, true, false, false, true];
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox - 1 '),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.green[50],
              border: Border.all(color: Colors.green[300])),
          child: CheckboxListTile(
            title: Text('Kabul Ediyor Musunuz ?'),
            subtitle: Text('Detaylar İçin Tıklayın'),
            secondary: Text(
              '🔥', //Icon veya Resimde Kullanılabilir.
              style: TextStyle(fontSize: 30),
            ),
            value: _isChecked,
            onChanged: (bool value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
