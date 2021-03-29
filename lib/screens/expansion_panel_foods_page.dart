import 'package:flutter/material.dart';

//ExpansionPanel Body'de göstereceğimiz veriler
class ItemModel {
  bool isExpanded;
  String header;
  BodyModel bodyModel;

  ItemModel({this.isExpanded: false, this.header, this.bodyModel});
}

//ExpansionPanel'in gizli kısmında göstereceğimiz veriler
class BodyModel {
  double price;
  double quantity;

  BodyModel({this.price, this.quantity});
}

class ExpansionPanelPage extends StatefulWidget {
  ExpansionPanelPage({Key key}) : super(key: key);

  @override
  _ExpansionPanelPageState createState() => _ExpansionPanelPageState();
}

class _ExpansionPanelPageState extends State<ExpansionPanelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: foodsData.length,
          itemBuilder: (context, index) {
            return ExpansionPanelList(
              animationDuration: Duration(seconds: 1),
              children: [
                ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Text(foodsData[index].header),
                    );
                  },
                  isExpanded: foodsData[index].isExpanded,
                  body: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Fiyat: ${foodsData[index].bodyModel.price}'),
                        Text('Miktar: ${foodsData[index].bodyModel.quantity}'),
                      ],
                    ),
                  ),
                ),
              ],
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  foodsData[index].isExpanded = !foodsData[index].isExpanded;
                });
              },
            );
          },
        ),
      ),
    );
  }

  List<ItemModel> foodsData = <ItemModel>[
    ItemModel(
      header: 'Orange',
      bodyModel: BodyModel(price: 5, quantity: 5),
    ),
    ItemModel(
      header: 'Cucumber',
      bodyModel: BodyModel(price: 4, quantity: 10),
    ),
    ItemModel(
      header: 'Tomato',
      bodyModel: BodyModel(price: 4, quantity: 10),
    ),
    ItemModel(
      header: 'Lemon',
      bodyModel: BodyModel(price: 10, quantity: 4),
    ),
    ItemModel(
      header: 'Banana',
      bodyModel: BodyModel(price: 12, quantity: 8),
    ),
  ];
}
