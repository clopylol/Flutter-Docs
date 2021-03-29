import 'package:flutter/material.dart';

class ChoiceChipPage extends StatefulWidget {
  ChoiceChipPage({Key key}) : super(key: key);

  @override
  _ChoiceChipPageState createState() => _ChoiceChipPageState();
}

class _ChoiceChipPageState extends State<ChoiceChipPage> {
  //Chip List
  List<String> chipList = [
    'Berkay',
    'Salih',
    'Sinan',
    'Ertem',
    'Ahmet',
    'Abdülkerim',
    'Rasim',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choice Chip'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196F3),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: 380,
                height: 380,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Color(0xffffc107),
                        ),
                        child: Center(
                          child: Text(
                            'SORU X',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                          'Aşağıdakilerden hangisi Elektrik Elektronik Mühendisliğini mesleğini yapmaktadır ? ',
                          style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Container(
                      child: Wrap(
                        spacing: 5.0,
                        runSpacing: 5.0,
                        children: [
                          ChoiceChipWidget(choiceList: chipList),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 32.0),
                      child: Container(
                        child: RaisedButton(
                            color: Color(0xffffbf00),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ChoiceChipWidget extends StatefulWidget {
  ChoiceChipWidget({Key key, this.choiceList}) : super(key: key);
  final List<String> choiceList;

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
          selected: selectedChoice == element[0],
          backgroundColor: Colors.grey[300],
          selectedColor: Colors.green,
          onSelected: (selected) {
            setState(() {
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
