import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  RadioButtonPage({Key key}) : super(key: key);

  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Kullanımı'),
      ),
      body: Column(
        children: <Widget>[
          //5. Disable Örneği
          for (int i = 1; i <= 5; i++)
            ListTile(
              title: Text(
                'Radio $i',
              ),
              leading: Radio(
                value: i,
                groupValue: _value,
                onChanged: i == 5
                    ? null
                    : (int value) {
                        setState(() {
                          _value = value;

                          //Renk felan verip bi şeyler yaptırabilirz. Burayı func kullanmak daha worth.
                          switch (_value) {
                            case 1:
                              print("1 Seçili");
                              break;
                            case 2:
                              print("2 Seçili");
                              break;
                            case 3:
                              print("3 Seçili");
                              break;
                            case 4:
                              print("4 Seçili");
                              break;
                            case 5:
                              print("5 Seçili");
                              break;
                            default:
                          }
                        });
                      },
              ),
            ),
          Divider(),
          Text('Seçili Radio Button => Radio $_value')
        ],
      ),
    );
  }
}
