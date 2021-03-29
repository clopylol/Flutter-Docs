import 'package:flutter/material.dart';

class ImagesPages extends StatefulWidget {
  ImagesPages({Key key}) : super(key: key);

  @override
  _ImagesPagesState createState() => _ImagesPagesState();
}

class _ImagesPagesState extends State<ImagesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images Page"),
        brightness: Brightness.dark,
        actions: [
          IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
            label: Text(
              "Ayarlar",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(50),
              alignment: Alignment.center,
              child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1451909496057-8c1b9c9fd247?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
                fit: BoxFit.contain,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes
                          : null,
                    ),
                  );
                },
              ),
            ),
            Placeholder(
              strokeWidth: 2.0,
              fallbackHeight: 300,
              fallbackWidth: 300,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
