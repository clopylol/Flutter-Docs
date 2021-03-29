import 'package:flutter/material.dart';

/*
  Animated Positioned Widget kullanım örneği.
*/

class AnimatedPositionedPage extends StatefulWidget {
  @override
  createState() => AnimatedPositionedPageState();
}

class AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  bool _first = true;

  //Container'ın başlangıçtaki boyutları.
  double _left = 20;
  double _top = 20;
  double _right = 20;
  double _bottom = 20;

  //Buttona tıklandıktan sonra _first'ün durumuna göre boyutlar değiştecektir.
  void _animatedPositione() {
    setState(() {
      _left = _first ? 10 : 50;
      _top = _first ? 70 : 20;
      _right = _first ? 10 : 50;
      _bottom = _first ? 70 : 20;

      _first = !_first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Positioned Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  left: _left,
                  top: _top,
                  right: _right,
                  bottom: _bottom,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Boyut Değiştir'),
            onPressed: _animatedPositione,
          ),
        ],
      ),
    );
  }
}
