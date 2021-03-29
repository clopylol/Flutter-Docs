import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown.dart';
import 'package:flutter_countdown_timer/countdown_controller.dart';

class YeniTimerPage extends StatefulWidget {
  YeniTimerPage({Key key}) : super(key: key);

  @override
  _YeniTimerPageState createState() => _YeniTimerPageState();
}

class _YeniTimerPageState extends State<YeniTimerPage> {
  CountdownController countdownController =
      CountdownController(duration: Duration(minutes: 5));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Countdown(countdownController: countdownController),
      ),
      floatingActionButton: FloatingActionButton(
        child:
            Icon(countdownController.isRunning ? Icons.stop : Icons.play_arrow),
        onPressed: () {
          if (!countdownController.isRunning) {
            ///start
            countdownController.start();
          } else {
            ///pause
            countdownController.stop();
          }
          setState(() {
            ///change icon
          });
        },
      ),
    );
  }
}
