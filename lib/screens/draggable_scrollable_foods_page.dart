import 'package:flutter/material.dart';

class DraggableScrollableFoodPage extends StatefulWidget {
  DraggableScrollableFoodPage({Key key}) : super(key: key);

  @override
  _DraggableScrollableFoodPageState createState() =>
      _DraggableScrollableFoodPageState();
}

class _DraggableScrollableFoodPageState
    extends State<DraggableScrollableFoodPage> {
  List foods = [
    ["🍏", "Yeşil Elma", "1 Kg = 4 ₺"],
    ["🍎", "Kırmızı Elma", "1 Kg = 3 ₺"],
    ["🍐", "Armut", "1 Kg = 4 ₺"],
    ["🍊", "Portakal", "1 Kg = 2 ₺"],
    ["🍋", "Limon", "1 Kg = 8 ₺"],
    ["🍉", "Karpuz", "1 Kg = 5 ₺"],
    ["🍇", "Üzüm", "1 Kg = 5 ₺"],
    ["🍓", "Çilek", "1 Kg = 8 ₺"],
    ["🍒", "Vişne", "1 Kg = 5 ₺"],
    ["🍍", "Ananas", "1 Adet = 10 ₺"],
    ["🥝", "Kivi", "1 Kg = 7 ₺"],
    ["🍅", "Domates", "1 Kg = 3 ₺"],
    ["🌶", "Biber", "1 Kg = 3 ₺"],
    ["🍆", "Patlıcan", "1 Kg = 4 ₺"],
    ["🥑", "Avokado", "1 Adet = 7 ₺"],
    ["🥒", "Salatalık", "1 Kg = 3 ₺"],
    ["🥕", "Havuç", "1 Kg = 4 ₺"],
    ["🥥", "Hindistan Cevizi", "1 Adet = 8 ₺"],
    ["🥦", "Brokoli", "1 Adet = 7 ₺"],
    ["🍌", "Muz", "1 Kg = 8 ₺"],
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("KAP GETİR !"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.shopping_cart_rounded),
              ),
              Tab(
                icon: Icon(Icons.help_sharp),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.person_pin_circle_outlined),
            ),
          ],
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.network(
                "https://hemengeldi.com/images/services/2326825323241-812-motokurye.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize:
                  0.4, //DSS'in açılışta ekranın yüzde kaçını kaplayacağı, varsayılan 0,5 = %50
              minChildSize:
                  0.25, //DSS'in küçültülebileceği minimum boyut, varsayılan 0.25 = %25
              maxChildSize:
                  0.75, //DSS'in büyütülebileceği maksimum boyut, varsayılan 1 = %100
              builder: (context, scrollController) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: ListView.builder(
                      itemCount: foods.length,
                      controller: scrollController,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              "${foods[index][0]}",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          title: Text(
                            foods[index][1],
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          subtitle: Text(
                            foods[index][2],
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          trailing: IconButton(
                            color: Colors.blue,
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        );
                      },
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
