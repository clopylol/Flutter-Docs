import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Kullanımı'),
      ),
      //ActiveTrack => Seçili olan kısım.
      //InactiveTrack => Seçili olmayan kısım.
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Slider1(),
          Divider(),
          Slider2(),
          Divider(),
          Slider3(), //Range Slider
          Divider(),
        ],
      ),
    );
  }
}

//-----------------------------Slider 1-----------------------------
class Slider1 extends StatefulWidget {
  Slider1({Key key}) : super(key: key);

  @override
  _Slider1State createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  double _currentSliderValue = 0; //Slider - 1
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 10,
      label: _currentSliderValue.round().toString(),
      //.round kullanmazsak double şeklinde gözüküyor.
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}

//-----------------------------Slider 2-----------------------------
class Slider2 extends StatefulWidget {
  Slider2({Key key}) : super(key: key);

  @override
  _Slider2State createState() => _Slider2State();
}

class _Slider2State extends State<Slider2> {
  double _currentSliderValue2 = 0; //Slider - 2
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.red[700],
        inactiveTrackColor: Colors.red[100],
        trackShape: RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
        thumbColor: Colors.redAccent,
        overlayColor: Colors.red.withAlpha(32),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
        tickMarkShape: RoundSliderTickMarkShape(),
        activeTickMarkColor: Colors.red[700],
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: Colors.redAccent,
        valueIndicatorTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      child: Slider(
        value: _currentSliderValue2,
        min: 0,
        max: 100,
        divisions: 10,
        label: '$_currentSliderValue2',
        onChanged: (value) {
          setState(
            () {
              _currentSliderValue2 = value;
            },
          );
        },
      ),
    );
  }
}

//-----------------------------Range Slider 3-----------------------------
class Slider3 extends StatefulWidget {
  Slider3({Key key}) : super(key: key);

  @override
  _Slider3State createState() => _Slider3State();
}

class _Slider3State extends State<Slider3> {
  RangeValues _currentSliderValue3 = RangeValues(20, 60); //Slider - 3
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.attach_money_outlined,
            color: Colors.blue,
            size: 40,
          ),
          new Expanded(
              child: RangeSlider(
            values: _currentSliderValue3,
            min: 0,
            max: 100,
            divisions: 10,
            labels: RangeLabels(
              _currentSliderValue3.start.round().toString(),
              _currentSliderValue3.end.round().toString(),
            ),
            onChanged: (RangeValues value) {
              setState(() {
                _currentSliderValue3 = value;
              });
            },
          )),
        ],
      ),
    );
  }
}
