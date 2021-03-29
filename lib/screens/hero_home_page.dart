import 'package:flutter/material.dart';
import 'package:flutter_docs/screens/hero_detail_page.dart';

class HeroHomePage extends StatefulWidget {
  HeroHomePage({Key key}) : super(key: key);

  @override
  _HeroHomePageState createState() => _HeroHomePageState();
}

class _HeroHomePageState extends State<HeroHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return HeroDetailPage();
          }));
        },
        child: Hero(
          tag: 'Hero-Deneme',
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    );
  }
}
