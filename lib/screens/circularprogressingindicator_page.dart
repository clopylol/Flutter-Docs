import 'package:flutter/material.dart';

class CircularProgressIndicatorPage extends StatefulWidget {
  CircularProgressIndicatorPage({Key key}) : super(key: key);

  @override
  _CircularProgressIndicatorPageState createState() =>
      _CircularProgressIndicatorPageState();
}

class _CircularProgressIndicatorPageState
    extends State<CircularProgressIndicatorPage> {
  Icon fab = Icon(
    Icons.refresh,
  );

  bool showProgress = false;
  double progress = 0.2;

  void toggleSubmitState() {
    setState(() {
      showProgress = !showProgress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter - tutorialkart.com"),
      ),
      body: Center(
          child: showProgress
              ? CircularProgressIndicator(value: progress)
              : Text(
                  'Click on Refreseh button below',
                  style: TextStyle(fontSize: 20),
                )),
      floatingActionButton: FloatingActionButton(
        child: fab,
        onPressed: () => setState(() {
          showProgress = !showProgress;
          if (showProgress) {
            Future.delayed(const Duration(milliseconds: 1000), () {
              setState(() {
                progress = 0.8;
              });
            });
            fab = Icon(
              Icons.stop,
            );
          } else {
            fab = Icon(Icons.refresh);
          }
        }),
      ),
    );
  }
}
