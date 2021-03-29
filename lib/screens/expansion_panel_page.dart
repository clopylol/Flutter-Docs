import 'package:flutter/material.dart';

class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class ExpansionPageBasicPage extends StatefulWidget {
  ExpansionPageBasicPage({Key key}) : super(key: key);

  @override
  _ExpansionPageBasicPageState createState() => _ExpansionPageBasicPageState();
}

class _ExpansionPageBasicPageState extends State<ExpansionPageBasicPage> {
  List<Item> _dataList = generateItems(8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel Basic'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _buildExpansionPanel(),
        ),
      ),
    );
  }

  Widget _buildExpansionPanel() {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _dataList[panelIndex].isExpanded = !isExpanded;
        });
      },
      children: _dataList.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle: Text('To delete this panel, tap the trash can icon'),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _dataList.removeWhere((currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
