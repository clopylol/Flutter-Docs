import 'dart:async';
import 'package:flutter/material.dart';

class TimerPageKelime extends StatefulWidget {
  TimerPageKelime({Key key}) : super(key: key);

  @override
  _TimerPageKelimeState createState() => _TimerPageKelimeState();
}

class _TimerPageKelimeState extends State<TimerPageKelime> {
  int _counter = 0;
  Timer _timer;

  void startTimer() {
    _counter = 120;
    _timer != null ? _timer.cancel() : null;
    //1'er saniye azalat, süre 0 dan büyük oldukça
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _counter > 0 ? _counter-- : _timer.cancel();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Timer App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (_counter > 0)
                  ? Text("")
                  : Text(
                      'SÜRE DOLDU !',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
              Text(
                '$_counter',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                    color: Colors.red),
              ),
              ElevatedButton.icon(
                onPressed: () => startTimer(),
                icon: Icon(Icons.timer),
                label: Text('SAYACI BAŞLAT'),
              ),
            ],
          ),
        ));
  }
}
