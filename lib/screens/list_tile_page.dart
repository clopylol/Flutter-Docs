import 'package:flutter/material.dart';

class ListTilePage extends StatefulWidget {
  ListTilePage({Key key}) : super(key: key);

  @override
  _ListTilePageState createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/37087597?s=460&u=1af871ed70165792c70a755a195d98cb031c11d5&v=4'),
              ),
              trailing: Icon(Icons.add),
              title: Text('Horse'),
              subtitle: Text('A strong animal'),
              //dense: true, //Yazıları biraz küçültüyor.
              //contentPadding: EdgeInsets.symmetric(horizontal: 0.0), //Varsayılan 16
              //onTap: () => null,
              //onLongPress: () => null ,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/37087597?s=460&u=1af871ed70165792c70a755a195d98cb031c11d5&v=4'),
              ),
              trailing: Icon(Icons.add),
              title: Text('Horse'),
              subtitle: Text('A strong animal'),
              selected: true,
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/37087597?s=460&u=1af871ed70165792c70a755a195d98cb031c11d5&v=4'),
              ),
              trailing: Icon(Icons.add),
              title: Text('Horse'),
              subtitle: Text('A strong animal \nBurası 3. Satır'),
              isThreeLine: true,
            ),
            Divider(),

            //Hepsin arasına otomatik divider eklemek için => ListTile.divideTiles
            // ListView(
            //   children: ListTile.divideTiles(context: context, tiles: [
            //     ListTile(
            //       title: Text('Horse'),
            //     ),
            //     ListTile(
            //       title: Text('Cow'),
            //     ),
            //     ListTile(
            //       title: Text('Camel'),
            //     ),
            //   ]).toList(),
            // )
          ],
        ),
      ),
    );
  }
}
