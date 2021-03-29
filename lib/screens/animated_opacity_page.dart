import 'package:flutter/material.dart';

/*
  AnimatedOpacity widgetı kullanımı hakkında bir örnek.
  Widgetların opacity özelliğini değiştirmek için kullanıldı.
*/

class LogoFade extends StatefulWidget {
  @override
  createState() => LogoFadeState();
}

class LogoFadeState extends State<LogoFade> {
  double opacityLevel = 1.0;

  //Opacity değiştirmek için kullanıldı.
  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0.0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: Duration(seconds: 3), //Animasyonun gerçekşeşme süresi
              child: FlutterLogo(
                size: 100,
              ),
            ),
            ElevatedButton(
              child: Text('Fade Logo'),
              onPressed: _changeOpacity,
            ),

            SizedBox(height: 40),

            //Curve kullanarak farklı animasyonları kullanabiliriz.
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: Duration(seconds: 3),
              curve: Curves.bounceIn,
              child: FlutterLogo(
                size: 100,
              ),
            ),
            ElevatedButton(
              child: Text('Fade Logo w/Curves'),
              onPressed: _changeOpacity,
            ),
          ],
        ),
      ),
    );
  }
}
