import 'package:flutter/material.dart';

class SliverAppBarPage extends StatelessWidget {
  const SliverAppBarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        //Buraya Normal App Bar Eklersek Hata Alırız !
        SliverAppBar(
          //leading: Icon(Icons.chevron_left),
          //title: Text('Fixed Title'),
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Selam Bel Sliverımss'),
          ),
          //Pinned => Kaydırınca küçük olarak kalır. false olursa tamamen kaybolur. basic false
          //pinned: true,

          //Floating: True iken aşağıdan yukarı çıkarken app bar görünür hale gelir.
          //False ise en tepeye çıkana kadar app bar gözükmez.
          floating: false,
        ),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate([
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.orange,
            )
          ]),
        )
      ],
    );
  }
}
