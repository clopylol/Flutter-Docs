import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderExamplePage extends StatefulWidget {
  FutureBuilderExamplePage({Key key}) : super(key: key);

  @override
  _FutureBuilderExamplePageState createState() =>
      _FutureBuilderExamplePageState();
}

class _FutureBuilderExamplePageState extends State<FutureBuilderExamplePage> {
  Future _getData() async {
    return (await http.get(Uri.parse(
            'https://hwasampleapi.firebaseio.com/api/books/0/author.json')))
        .body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Builder Example Page'),
      ),
      body: Center(
        child: FutureBuilder(
          future: _getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Text((json.decode(snapshot.data)));
              } else {
                Text("Bir Hata Meydana Geldi !");
              }
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              return Text("Baya büyük bir sorun var. API bulunamadı.");
            }
            return Text("hata");
          },
        ),
      ),
    );
  }
}
