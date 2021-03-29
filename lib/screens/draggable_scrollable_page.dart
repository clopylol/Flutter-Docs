import 'package:flutter/material.dart';

class DraggableScrollablePage extends StatefulWidget {
  DraggableScrollablePage({Key key}) : super(key: key);

  @override
  _DraggableScrollablePageState createState() =>
      _DraggableScrollablePageState();
}

//Sürüklenebilir Liste Örneği

class _DraggableScrollablePageState extends State<DraggableScrollablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DraggableScrollable"),
      ),
      body: SizedBox(
        child: DraggableScrollableSheet(
          builder: (context, scrollController) {
            return Container(
              color: Colors.blue,
              child: ListView.builder(
                controller: scrollController,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
