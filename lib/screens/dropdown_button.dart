import 'package:flutter/material.dart';

class DropDownButtonPage extends StatefulWidget {
  DropDownButtonPage({Key key}) : super(key: key);

  @override
  _DropDownButtonPageState createState() => _DropDownButtonPageState();
}

class ListItem {
  int id;
  String name;
  IconData icon;

  ListItem(this.id, this.name, this.icon);
}

class _DropDownButtonPageState extends State<DropDownButtonPage> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "Berkay", Icons.person),
    ListItem(2, "Salih", Icons.car_repair),
    ListItem(3, "Sinan", Icons.snooze),
    ListItem(4, "Ertem", Icons.alarm),
    ListItem(4, "Rok", Icons.add),
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _itemSelected;

  @override
  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _itemSelected = _dropdownMenuItems[1].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = [];

    for (ListItem listItem in listItems) {
      items.add(DropdownMenuItem(
        child: Text(listItem.name),
        value: listItem,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down Button Kullanımı'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _itemSelected,
                items: _dropdownMenuItems,
                onChanged: (value) {
                  setState(() {
                    _itemSelected = value;
                  });
                },
              ),
            ),
          ),
          Text("We have selected ${_itemSelected.name}"),
        ],
      ),
    );
  }
}
