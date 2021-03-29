import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  ChoiceChipWidget({Key key, this.choiceList, this.id}) : super(key: key);
  final List<String> choiceList;
  final int id;

  @override
  _ChoiceChipWidgetState createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  String selectedChoice = '';

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.choiceList.forEach((element) {
      choices.add(Container(
        padding: EdgeInsets.all(2),
        child: ChoiceChip(
          label: Text(element),
          labelStyle: TextStyle(
              color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
          selected: selectedChoice == element,
          backgroundColor: Colors.grey[300],
          selectedColor: Colors.green,
          onSelected: (selected) {
            setState(() {
              print('Seçili : $element');
              selectedChoice = element;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
