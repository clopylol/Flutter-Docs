import 'package:flutter/material.dart';

class SliderStarsPage extends StatefulWidget {
  SliderStarsPage({Key key}) : super(key: key);

  @override
  _SliderStarsPageState createState() => _SliderStarsPageState();
}

class _SliderStarsPageState extends State<SliderStarsPage> {
  var feedbackText = 'OY VERİN';
  var sliderValue = 0.0;

  IconData stars = Icons.star;
  IconData stars2 = Icons.star;
  IconData stars3 = Icons.star;
  IconData stars4 = Icons.star;
  IconData stars5 = Icons.star;
  //Icon
  Color feedbackColor = Colors.blue;
  Color feedbackColor2 = Colors.blue;
  Color feedbackColor3 = Colors.blue;
  Color feedbackColor4 = Colors.blue;
  Color feedbackColor5 = Colors.blue;

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
                            child: Row(
                              children: [
                                Icon(
                                  stars,
                                  size: 30,
                                ),
                                Icon(
                                  stars,
                                  size: 30,
                                ),
                                Icon(
                                  stars,
                                  size: 30,
                                ),
                                Icon(
                                  stars,
                                  size: 30,
                                ),
                                Icon(
                                  stars,
                                  size: 30,
                                ),
                              ],
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
                                    stars = Icons.ac_unit_outlined;
                                    feedbackColor = Colors.red[200];
                                    feedbackText = 'Çok Kötü';
                                  }
                                  if (sliderValue >= 1.1 &&
                                      sliderValue <= 2.0) {
                                    stars = Icons.ac_unit_outlined;
                                    feedbackColor = Colors.yellow;
                                    feedbackText = 'Kötü';
                                  }
                                  if (sliderValue >= 2.1 &&
                                      sliderValue <= 3.0) {
                                    stars = Icons.ac_unit_outlined;
                                    feedbackColor = Colors.amber;
                                    feedbackText = 'Orta';
                                  }
                                  if (sliderValue >= 3.1 &&
                                      sliderValue <= 4.0) {
                                    stars = Icons.stars_sharp;
                                    feedbackColor = Colors.green;
                                    feedbackText = 'İyi';
                                  }
                                  if (sliderValue >= 4.1 &&
                                      sliderValue <= 5.0) {
                                    stars = Icons.ac_unit_outlined;
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
