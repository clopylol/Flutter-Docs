import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';

class KelimeOyunuSolo extends StatefulWidget {
  @override
  _KelimeOyunuSoloState createState() => _KelimeOyunuSoloState();
}

int i = 0;

var _addCard = sorular[i][1].length;

// List sorular = [
//   ["Soru0", "sıfır"],
//   ["Soru 1", "birbirb"],
//   ["Soru 2", "iki"],
//   ["Soru 3", "üç"],
//   ["Soru 4", "dört"],
//   ["Soru 5", "dörtTTT"],
// ];

// List sorular = [
//   ["“Ulvi” sözünün Türkçe kökenli eş anlamlısı", "YÜCE"],
//   ["Acınmak, yazıklanmak, teessüf etmek” anlamlarındaki söz", "YERİNMEK"],
//   ["Haber toplama, yayma ve üyelerine dağıtma işiyle uğraşan kuruluş", "AJANS"],
//   [
//     "Yakınma ve hafifseme yoluyla “Şimdiki devir” anlamında kullanılan sözcük",
//     "ZAMANE"
//   ],
//   ["Evliya mucizesi", "KERAMET"],
// ];

// List sorular = [
//   ["Çabuk ve kolay kavrayan, zeyrek", "ZEKİ"],
//   [
//     "Ruhi yaşam ve bedenle uyumlu olmayı amaçlayan kültürfizik ve felsefe sistemi",
//     "YOGA"
//   ],
//   ["Karanın deniz boyunca uzanan bölümü", "SAHİL"],
//   ["Kişinin kendine taktığı simgesel isim", "RUMUZ"],
//   ["Güncel anlamına gelen Fransızca kökenli sözcük", "AKTÜEL"],
//   ["Eklemek, katmak, ilave etmek” anlamında bir söz", "ULAMAK"],
//   [
//     "Bir iş için, “Gereği gibi yürümemek, geri kalmak” anlamında kullanılan tabir",
//     "AKSAMAK"
//   ],
//   [
//     "Öküz, manda ve deve gibi hayvanlar için, “Diyaframını kullanarak bağırma",
//     "BÖĞÜRME"
//   ],
//   ["Kendini tutamayıp çökmek, bayılıp düşmek", "YIĞILMAK"],
//   ["Üretim fiyatının altında yapılan satışları” niteleyen söz", "ZARARINA"],
//   ["Örnek ve feyzalınan, öykünülen, taklit edilen kişi", "ROLMODELİ"],
//   ["Bir cismi bir yöne doğru ansızın, çabucak fırlatmak", "ATIVERMEK"],
//   ["İmece”nin kurumsallaşıp sermayeli ortaklığa dönüşmüş hali", "KOOPERATİF"],
//   [
//     "Tüm hava koşullarında, yaz kış kullanılabilen” gereçlere yönelik bir tabir",
//     "DÖRTMEVSİM"
//   ],
// ];

// List sorular = [
//   ["“Ulvi” sözünün Türkçe kökenli eş anlamlısı", "YÜCE"],
//   ["Acınmak, yazıklanmak, teessüf etmek” anlamlarındaki söz", "YERİNMEK"],
//   ["Haber toplama, yayma ve üyelerine dağıtma işiyle uğraşan kuruluş", "AJANS"],
//   [
//     "Yakınma ve hafifseme yoluyla “Şimdiki devir” anlamında kullanılan sözcük",
//     "ZAMANE"
//   ],
//   ["Evliya mucizesi", "KERAMET"],
// ];

// List sorular = [
//   ["Temel niteliği bir olan dil, hayvan veya bitki topluluğu", "AİLE"],
//   ["Adını bir dondurma türüne de vermiş olan Avrupa şehri", "ROMA"],
//   ["Dar alanlarda kendini tekrarlayan gezinti", "VOLTA"],
//   ["Kişinin kendine taktığı simgesel isim", "RUMUZ"],
//   ["“Çöl” anlamında Arapça kökenli bir sözcük", "SAHRA"],
//   [" Dikiş nakış işlerinde kullanılan parmak korumalığı", "YÜKSÜK"],
//   ["“Havlamak” anlamında bir söz", "ÜRÜMEK"],
//   ["Bir yere ağırlanmak üzere çağrılmış kişi", "DAVETLİ"],
//   [
//     "“Orkestra için bestelenmiş, birkaç bölümden oluşan uzun müzik eserleriyle ilgili” anlamında bir söz",
//     "SENFONİK"
//   ],
//   ["Kötü bir olayı duyuran bilgi", "ACIHABER"],
//   [
//     "“Belik” de denen, nakış ve örgü işlerinde kullanılan bir motif",
//     "SAÇÖRGÜSÜ"
//   ],
//   ["“Ne çok katı ne de çok yumuşak” anlamında bir tabir", "TATLISERT"],
//   ["Psikolojik denge", "RUHSAĞLIĞI"],
//   [
//     " “Kefeni yırtmayı adet haline getirmiş kişiler” için kullanılan bir söz",
//     "DOKUZCANLI"
//   ]
// ];

List sorular = [
  ["Bir taşıttan yararlanmayan trafik öğesi", "YAYA"],
  ["Olması başka durumların gerçekleşmesini gerektiren şey, koşul", "ŞART"],
  ["Merak, kararsızlık veya kuşku anlatan bir söz,", "ACABA"],
  ["Dilin belli kurallarla kağıda dökülmesi, imla", "YAZIM"],
  ["Mecazi anlamda, “Cansız, güçsüz, etkisiz, miskin", "RUHSUZ"],
  ["Argoda, Kaçmak, ortadan kaybolmak", "TÜYMEK"],
  ["Karşılık beklemeden, iyilik olsun diye” anlamında bir söz", "HAYRINA"],
  ["Mülakat” ve “Müzakere” sözcüklerinin karşılığı olan kelime", "GÖRÜŞME"],
  [
    "Mecazen, “Kendini kabul ettirmek, kendine sağlam bir yer sağlamak” anlamında bir tabir",
    "TUTUNMAK"
  ],
  [
    "Yerel para biriminin, başka bir para birimi veya altın gibi başka bir değere bağlandığı düzen",
    "SABİTKUR"
  ],
  [
    "Ani ürperti, korku, heyecan anlarinda soylenen bir refleks cumlesi",
    "ÖDÜSITMAK"
  ],
  ["Saçmalık. (Yeri ve değeri olmayan söz, davranış içinde olma)", "Absürtlük"],
  ["Bağımlılık” anlamında bir söz", "MÜPTELALIK"],
  [
    "Spor dallarından doğmuş, “Paylaşarak ortaklaşa yapılan iş” anlamında da kullanılan bir tabir",
    "TAKIMOYUNU"
  ],
];

class _KelimeOyunuSoloState extends State<KelimeOyunuSolo> {
  //var isVisible = false;
  List visibleList = List(sorular[i][1].length);

  //Create Random List
  Random random = new Random();

  //Açılan indexleri bi daha açamamak için kullandık.
  List randomNumberList = [];

  //Harf sayısından fazla harf alınmaması için
  int counter = 0;

  //CreateRandomNum Func İçin Kullanılıypor.
  bool check = true;
  int randomNumber;

  int y = 0;

  int puan = _addCard * 100; //Sorudan Alınan Puan
  int toplamPuan = 0; //Yarışmacının kasasındaki toplam puan;

  int userId = 0;

  List userList = [
    [0, 'Salih', 0],
    [1, 'Erdoğan', 0],
    [2, 'Mustafa', 0],
    [3, 'Ahmet', 0],
  ];

  visibleListFun(String cevap) {
    print('Cevap Uzunluğu: ${cevap.length}');

    visibleList = List(cevap.length);
    print('Visible List Uzunluğu Counter => ${visibleList.length}');
    //visibleList = [cevap.length];

    for (int i = 0; i < cevap.length; i++) {
      visibleList[i] = false;
    }
  }

  //Random Sayı Harf İçin
  createRandomNum() {
    while (true) {
      randomNumber = random.nextInt(visibleList.length);
      print('Oluşabilecek Random Sayı Sayısı => $randomNumber');
      check = randomNumberList.contains(randomNumber);
      if (check == false) {
        randomNumberList.add(randomNumber);
        print('$randomNumber.Harfi Açıldı.');
        break;
      }
    }
    return randomNumber;
  }

  //Doğru-Yanlış buttonuna basınca tüm cevaplar açılıp kapansın.
  showAnswer(bool durum) {
    setState(() {
      counter = 0;
      int len = sorular[i][1].length;
      print('${sorular[i][1]} kelimesinin harf sayısı => $len');
      //print("sorular[i][1].length ${sorular[i][1].length}");

      if (durum) {
        for (var i = 0; i < len; i++) {
          //Cevapları Göster
          print('sayaç cevap $i');
          visibleList[i] = true;
        }
      } else {
        for (var i = 0; i < len; i++) {
          //Cevapları Kapat
          visibleList[i] = false;
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    visibleListFun(sorular[i][1]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KELİME OYUNU"),
      ),

      //-------------------------KULLANICI PUANLARI---------------------
      bottomNavigationBar: BottomAppBar(
        color: Colors.green.shade300,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // for (var z = 0; z < userList.length; z++)
              //   //_circleButton("${userList[z][1]}", userList[z][2]),
              //   _circleButton("${userList[z][1]}", userList[z][2]),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //SORU NUMARASI
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Container(
                        width: 60,
                        height: 50,
                        child: Center(child: Text('${i + 1}.Soru')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.red),
                        ),
                      ),
                    ),

                    //SORU
                    Container(
                      width: 1100,
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          "${sorular[i][0]}", //SORU
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),

                    //SORUYU CEVAPLAYACAK YARIŞMACININ RESMİ
                  ],
                ),
              ),
            ),
          ),
          //--------------------------SORU CEVAPLAR--------------------------
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                itemCount: _addCard,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: HexagonWidget.pointy(
                      width: 110,
                      color: Colors.orange.shade200,
                      elevation: 5,
                      child: visibleList[index]
                          ? Text(
                              "${sorular[i][1][index]}",
                              //CEVAPLAR
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.w800),
                            )
                          : Text(""),
                    ),
                  );
                }),
          ),
          //------------------------PUANLAR------------------------
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('SORU PUANI'),
                    Padding(padding: EdgeInsets.all(5)),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 28,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Text(
                          "$puan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text('TOPLAM PUAN'),
                    Padding(padding: EdgeInsets.all(5)),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 28,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Text(
                          "$toplamPuan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //------------------BUTTONLAR------------------
          Padding(
            padding: EdgeInsets.only(bottom: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 60,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_left_rounded,
                      size: 35,
                    ),
                    label: Text(
                      "ÖNCEKİ SORU",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        if (i > 0) {
                          randomNumberList.clear();
                          i--;
                          print('$i Soruya Geçildi');
                          counter = 0;
                          visibleListFun(sorular[i][1]);
                          _addCard = sorular[i][1].length;
                          puan = (_addCard * 100);

                          userId == 0 ? null : userId--;
                        } else {
                          null;
                        }
                      });
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  width: 200,
                  height: 60,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    icon: Icon(
                      Icons.cancel_outlined,
                      size: 35,
                    ),
                    label: Text(
                      "YANLIŞ",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        randomNumberList.clear();
                        print('YANLIŞ BİLDİN');
                        showAnswer(false);
                        print('YANLIŞ BUTTON COUNTER $counter');
                      });
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  width: 200,
                  height: 60,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    icon: Icon(
                      Icons.check_circle_outline,
                      size: 35,
                    ),
                    label: Text(
                      "DOĞRU",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        //Açilmayan harf sayısı başına 100 puan vereceğiz.
                        //Burada kaç harf açılmış ona bakıyoruz. Cevap uzunluğumuzdan(_addCard) açılan harf sayısını çıkartıp puanı hesaplıyoruz.
                        puan = (_addCard - counter) * 100;
                        toplamPuan += puan;
                        //Soruyu Cevaplayan Kullanıcının Hanesine Puanı Ekle.
                        puan += userList[userId][2];

                        randomNumberList.clear();
                        showAnswer(true);
                        print(
                            'TÜM CEVAPLAR AÇILDI - DOĞRU BİLDİN - $puan PUAN Eklendi. Toplam $toplamPuan puana ulaştın. Açılan Harf: $counter');
                      });
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  width: 200,
                  height: 60,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 35,
                    ),
                    label: Text(
                      "DİĞER SORU",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      showAnswer(false);
                      setState(() {
                        //Soru Cevap Kapansın

                        if (i == sorular.length - 1) {
                          print('Başka soru kalmadı');
                        } else {
                          randomNumberList
                              .clear(); //Rastegele Aynı Harfi Üretmeylim Diye Oluşturduğumuz Listi Sıfırlayalım

                          i++;
                          print('$i.Soruya Geçildi.');
                          counter = 0;
                          visibleListFun(sorular[i][1]);
                          print('visibleListFuna giden soru ${sorular[i][1]}');

                          _addCard = sorular[i][1].length;
                          puan = (_addCard * 100);
                        }
                      });
                    },
                  ),
                ),
                //Text('Geçerli Soru: $i'),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.green[300],
        onPressed: () {
          if (counter < sorular[i][1].length) {
            setState(() {
              y = createRandomNum();
              visibleList[y] = true;
              counter++;
              print('Açılan Harf Sayısı => $counter');

              puan = (_addCard - counter) * 100; //Sourdan kaç puan alabilir.
            });
          } else {
            print('Tüm Harfler Açıldı Daha Fazla Açamazsın !');
          }
        },
        child: Icon(
          Icons.add,
          size: 45,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _circleButton(String userName, int userPoint) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chip(
        label: Text(userName),
        avatar: CircleAvatar(
          backgroundColor: Colors.green,
          child: Text(
            "$userPoint",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
