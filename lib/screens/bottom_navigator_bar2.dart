import 'package:flutter/material.dart';
import 'package:flutter_docs/bottom_page_class.dart';

/*
  BottomNavigatorBar'da FloatingActionButton kullanım örneği.
  BottomIcon'lar bottom_page_class sayfasından geliyor.
*/

class ButtomNavigatorFloatingButton extends StatefulWidget {
  ButtomNavigatorFloatingButton({Key key}) : super(key: key);

  @override
  _ButtomNavigatorFloatingButtonState createState() =>
      _ButtomNavigatorFloatingButtonState();
}

class _ButtomNavigatorFloatingButtonState
    extends State<ButtomNavigatorFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bi Şeyler Deneniyor"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomIcon(
                icon: Icons.mail,
                iconLabel: "Mail",
                padding: EdgeInsets.only(left: 20.0),
              ),
              BottomIcon(
                icon: Icons.ac_unit,
                iconLabel: "Sail",
                padding: EdgeInsets.only(right: 20.0),
              ),
              BottomIcon(
                icon: Icons.accessibility_rounded,
                iconLabel: "Tail",
                padding: EdgeInsets.only(left: 20.0),
              ),
              BottomIcon(
                icon: Icons.add_alert,
                iconLabel: "Fail",
                padding: EdgeInsets.only(right: 20.0),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.account_circle,
          size: 35,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //FloatingButton'un konumu
    );
  }
}
