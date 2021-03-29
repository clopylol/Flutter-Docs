import 'package:flutter/material.dart';

class SliderEmoji extends StatefulWidget {
  SliderEmoji({Key key}) : super(key: key);

  @override
  _SliderEmojiState createState() => _SliderEmojiState();
}

class _SliderEmojiState extends State<SliderEmoji> {
  var feedbackText = 'OY VERİN';
  var sliderValue = 0.0;

  IconData feedback = Icons.ac_unit; //Icon
  Color feedbackColor = Colors.blue; //Icon Rengi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Emoji'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text('Değerlendir Bakalım'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Align(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24),
                  shadowColor: Colors.orange,
                  child: Container(
                    width: 350,
                    height: 400,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Container(
                            child: Text(feedbackText),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            child: Icon(
                              feedback,
                              color: feedbackColor,
                              size: 100,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            child: Slider(
                              min: 0,
                              max: 5,
                              divisions: 5,
                              value: sliderValue,
                              activeColor: Colors.orange,
                              inactiveColor: Colors.blueGrey,
                              onChanged: (newValue) {
                                setState(() {
                                  sliderValue = newValue;
                                  if (sliderValue >= 0.0 &&
                                      sliderValue <= 0.9) {
                                    feedback = Icons.ac_unit_outlined;
                                    feedbackColor = Colors.red[200];
                                    feedbackText = 'Çok Kötü';
                                  }
                                  if (sliderValue >= 1.1 &&
                                      sliderValue <= 2.0) {
                                    feedback = Icons.ac_unit_outlined;
                                    feedbackColor = Colors.yellow;
                                    feedbackText = 'Kötü';
                                  }
                                  if (sliderValue >= 2.1 &&
                                      sliderValue <= 3.0) {
                                    feedback = Icons.ac_unit_outlined;
                                    feedbackColor = Colors.amber;
                                    feedbackText = 'Orta';
                                  }
                                  if (sliderValue >= 3.1 &&
                                      sliderValue <= 4.0) {
                                    feedback = Icons.ac_unit_outlined;
                                    feedbackColor = Colors.green;
                                    feedbackText = 'İyi';
                                  }
                                  if (sliderValue >= 4.1 &&
                                      sliderValue <= 5.0) {
                                    feedback = Icons.ac_unit_outlined;
                                    feedbackColor = Colors.blue;
                                    feedbackText = 'Çok İyi';
                                  }
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Container(
                            child: Text('Your Raiting $sliderValue'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: ElevatedButton(
                                child: Text('RATE'),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
