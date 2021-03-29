import 'package:flutter/material.dart';

/*
  Rotation Transition kullanım örneği, CPU'yu yoranlar serisinde bulunuyor :D
*/

class RotationTransitionPage extends StatefulWidget {
  RotationTransitionPage({Key key}) : super(key: key);

  @override
  _RotationTransitionPageState createState() => _RotationTransitionPageState();
}

// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _RotationTransitionPageState extends State<RotationTransitionPage>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rotation Transition")),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0),
          ),
        ),
      ),
    );
  }
}
