import 'package:flutter/material.dart';

//LETSSSSSSSSSSS GOOO

class CheckBoxDynamicPage extends StatefulWidget {
  CheckBoxDynamicPage({Key key}) : super(key: key);

  @override
  _CheckBoxDynamicPageState createState() => _CheckBoxDynamicPageState();
}

class _CheckBoxDynamicPageState extends State<CheckBoxDynamicPage> {
  List<Map> foodList = [
    {
      "foodId": "1",
      "foodName": "Hamburger",
      "foodIcon": "🍔",
      "isChecked": false
    },
    {
      "foodId": "2",
      "foodName": "Sosisli Sandviç",
      "foodIcon": "🌭",
      "isChecked": false
    },
    {
      "foodId": "3",
      "foodName": "Patates Kızartması",
      "foodIcon": "🍟",
      "isChecked": false
    },
    {"foodId": "4", "foodName": "Pizza", "foodIcon": "🍕", "isChecked": false},
    {"foodId": "5", "foodName": "Dürüm", "foodIcon": "🌯", "isChecked": false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox Dynamic ListTile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                'Yemekleri Seçiniz',
                style: Theme.of(context).textTheme.headline6,
              )),

              Divider(
                  /*
                  height: Alt ve Üst Boşluk
                  thickness: Kalınlık
                  color: 
                  indent: Baştan boşluk
                  endIndent: Sondan boşluk
                */
                  ),
              SizedBox(height: 10),
              //
              //CheckBoxlar
              Column(
                  children: foodList.map((food) {
                return Container(
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    border: Border.all(color: Colors.green[300], width: 1.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CheckboxListTile(
                      value: food["isChecked"],
                      title: Text(food["foodName"]),
                      //subtitle: Text(food["foodId"]),
                      secondary: CircleAvatar(
                        backgroundColor: Colors.green[300],
                        child: Text(
                          food["foodIcon"],
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          food["isChecked"] = newValue;
                        });
                      }),
                );
              }).toList()),
              //
              //Show Selected Results
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Wrap(
                children: foodList.map((food) {
                  if (food["isChecked"] == true) {
                    return Card(
                      elevation: 3,
                      color: Colors.green,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          food["foodName"],
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  }
                  return Container();
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
