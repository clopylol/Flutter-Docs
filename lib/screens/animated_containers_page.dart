import 'package:flutter/material.dart';

/*
  Container ve AnimatedContainer arasındaki animasyon durumunu anlatmak için yapıldı.
  Buttona'a tıklandığı zaman;
    -Container'ın boyutu direkt değişirken,
    -AnimatedContainer ise kendisine verilen duration süresi boyunca o değişimi gerçekleştirecektir.
     (Yani örnek olarak burada, büyüyorsa veya küçülüyorsa, duration süresi boyunca o işlem gerçekleşecek.)                   
*/

class AnimatedContainersPage extends StatefulWidget {
  AnimatedContainersPage({Key key}) : super(key: key);

  @override
  _AnimatedContainersPageState createState() => _AnimatedContainersPageState();
}

class _AnimatedContainersPageState extends State<AnimatedContainersPage> {
  var height = 40.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boyut değiştirmek için tıkla."),
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 60.0, height: height, color: Colors.blue),
                Padding(
                  padding: EdgeInsets.only(right: 50),
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 3),
                  width: 60.0,
                  height: height,
                  color: Colors.red,
                ),
              ],
            ),
            ElevatedButton(
              child: const Text('TIKLA'),
              onPressed: () {
                setState(() {
                  height == 40.0 ? height = 320.0 : height = 40.0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
