import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  List<bool> checked = [true, true, false, false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox - 1 '),
      ),
      body: Column(
        children: [
          //5 CheckBox oluşturalım, sonuncusu disabled olsun.
          for (var i = 0; i < 5; i++)
            Row(
              children: [
                Checkbox(
                  value: checked[i],
                  onChanged: i == 4
                      ? null
                      : (bool value) {
                          setState(() {
                            checked[i] = value;
                          });
                        },
                  tristate: i ==
                      1, //Doğru - Yanlış ve Bol olabilir, varsayılan olarak yanlış gelir.
                  activeColor: Colors.green,
                ),
                Text(
                  'CheckBox ${i + 1}',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: i == 4 ? Colors.black38 : Colors.black),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
