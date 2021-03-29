import 'package:flutter/material.dart';

class ToolTipExamplePage extends StatelessWidget {
  const ToolTipExamplePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToolTip'),
      ),
      body: Center(
        child: Tooltip(
          message: "I am a Tooltip",
          child: Text("Hover over the text to show a tooltip."),
        ),
      ),
    );
  }
}
