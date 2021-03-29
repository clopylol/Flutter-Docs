import 'package:flutter/material.dart';

class AnimatedSizePage extends StatefulWidget {
  AnimatedSizePage({Key key}) : super(key: key);

  @override
  _AnimatedSizePageState createState() => _AnimatedSizePageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _AnimatedSizePageState extends State<AnimatedSizePage>
    with SingleTickerProviderStateMixin {
  double _size = 50.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 250.0 : 100.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Size Büyütmek İçin Tıkla"),
        actions: [],
      ),
      body: GestureDetector(
        onTap: () => _updateSize(),
        child: Container(
          color: Colors.amberAccent,
          child: AnimatedSize(
            curve: Curves.easeIn,
            vsync: this,
            duration: Duration(seconds: 1),
            child: FlutterLogo(size: _size),
          ),
        ),
      ),
    );
  }
}
