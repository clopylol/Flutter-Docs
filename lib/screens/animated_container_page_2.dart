import 'package:flutter/material.dart';

/*
Ekrandaki buttona tıklandığında AnimatedContainer ile bir container'ı ekranın istediğimiz bir yerine taşıyabiliriz.
Burada ise bir Container'a uçak iconu verip kullanıldı. Button'a tıklandığı zaman animasyon başlıyor ve Container istediğimiz yere doğru taşınıyor.

*/

class FlightExamplePage extends StatefulWidget {
  @override
  FlightExamplePageState createState() {
    return new FlightExamplePageState();
  }
}

class FlightExamplePageState extends State<FlightExamplePage> {
  var _alignment = Alignment.bottomCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        padding: EdgeInsets.all(10.0),
        duration: Duration(seconds: 2),
        alignment: _alignment,
        child: Container(
          height: 50.0,
          child: Icon(
            Icons.airplanemode_active,
            size: 50.0,
            color: Colors.redAccent,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            setState(() {
              if (_alignment == Alignment.bottomCenter) {
                //Sayfanın ortasına kadar uçak uçacaktır.
                //.topCenter kullanarak en üste kadar uçurulabilir.
                _alignment = Alignment.center;
              } else {
                _alignment = Alignment.bottomCenter;
              }
            });
          },
          icon: Icon(Icons.airplanemode_active),
          label: Text("Fly Plane")),
    );
  }
}
