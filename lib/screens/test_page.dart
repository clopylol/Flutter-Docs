import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
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

List sorular = [
  //4 Kelimeler = 10 Lazım
  [
    "Kendinden geçecek, unutacak kadar İlâhî bir aşk hali.",
    "VECD"
  ], //AŞK- Muhabeet  //o zaman... ile bin secde eder -varsa- taşım,
  ["Halka gibi dürülmüş şey, kıvrım", "LÜLE"],
  ["Yapılmasında sakınca olmayan şey.", "CAİZ"],
  ["Destek olan, gözeten, kollayan, koruyan, koruyucu kimse", "HAMİ"],
  ["Eski Türklerde savaşçı kurt, cesur anlamına gelen sözcük", "BÖRÜ"],
  [
    "Sigorta kuruluşlarına bağlı olanların ödemek zorunda oldukları ücret",
    "PRİM"
  ],
  ["Belli bir unvan kazanması beklenen müstakbel kişi, namzet", "ADAY"],
  ["Argoda, “Tehdit içeren saldırgan tavır, söz veya eylem”", "ATAR"],
  // ["Bir taşıttan yararlanmayan trafik öğesi", "YAYA"],
  // ["Olması başka durumların gerçekleşmesini gerektiren şey, koşul", "ŞART"],

//5 Kelime
  ["Türklerin bilinen ilk alfabesi", "ORHUN"], // Moğolistan'da bulunur.
  ["Yukarı çıkma vasıtası, manevi bir merdiven", "MİRAÇ"],
  [
    "Başka bir kimsenin veya canlının mutsuzluğuna karşı duyulan üzüntü, merhamet",
    "ACIMA"
  ],
  ["Allah'ın tüm yaratıklarına verdiği nimet", "RIZIK"],
  ["Dini emir ve yasaklara uyan, iyi ahlak sahibi", "SALİH"],
  ["Padişahın ismi ve lakabı bulunan alâmet, imza.", "TUĞRA"],
  ["Yük eyeri", "SEMER"],
  ["İslam toplumunun tamamı, müslümanların tümü", "ÜMMET"],

  // ["Merak, kararsızlık veya kuşku anlatan bir söz,", "ACABA"],
  // ["Dilin belli kurallarla kağıda dökülmesi, imla", "YAZIM"],

//6 Kelime
  ["Belirli bir davranışta bulunmaya zorlayıcı söz, emir, ferman", "BUYRUK"],
  ["Türk ve Altay mitolojisinde bulunan çift başlı kartal.", "ÖKSÖKÖ"],
  ["İnanmak ve inanç kelimesinin arapça karşılığı", "İTİKAT"],
  [
    "Osmanlı ordusu tarafından Rus ve Rumen taarruzlarına karşı 145 gün savunulan kent",
    "PLEVNE"
  ],
  ["Hekimin hastanedeki hastaları dolaşıp yoklaması", "VİZİTE"],
  ["Üzerinde hutbe okunan merdivenli yapı", "MİNBER"],
  [
    "Bir şeyin üzerinde açılan veya bulunan küçük girinti şeklindeki oyukçuk, çentik",
    "KERTİK"
  ],
  ["İslam dinine göre, cennette var bulunan kutsal nehir", "KEVSER"],
  //["Mecazi anlamda, “Cansız, güçsüz, etkisiz, miskin", "RUHSUZ"],
  //["Argoda, Kaçmak, ortadan kaybolmak", "TÜYMEK"],

//7 Kelime
  [
    "Büyün soy sop, tüm sülale ve atalar” anlamında kalıplaşmış bir tabir",
    "YEDİCET"
  ],
  [
    "Herhangi bir olay karşısında duyulan şaşkınlık ve acı karşısında atılan çığlık",
    "VÂVEYLA"
  ],
  [
    "Tavan süslemelerinde kullanılan ve çeşitli desenleri olan kalıp",
    "ALÇIPEN"
  ],
  ["Sonsuza kadar yaşayacak olan, kalıcı", "PÂYİDAR"],
  [
    "Osmanlı Devletinde kullanılan, günümüz rütbelerinden albaya denk bir askeri rütbe",
    "MİRALAY"
  ],
  ["Yasadışı kazancı temize çıkarmak", "AKLAMAK"],
  ["Su bazlı sentetik boya türü", "AKRİLİK"],
  [
    "Bu söylediklerinizi kabul etmiyorum, başka bir şeyler söyleyin” anlamında bir tabir",
    "GEÇİNİZ"
  ],
  // ["Karşılık beklemeden, iyilik olsun diye” anlamında bir söz", "HAYRINA"],
  // ["Mülakat” ve “Müzakere” sözcüklerinin karşılığı olan kelime", "GÖRÜŞME"],

//8 Kelime
  ["Sözü uzatmadan söylemek gerekirse, sözün kısası", "VELHASIL"],
  [
    "Çok yükseklerde dinlenmeksizin sürekli uçan, asla yere değmeyen efsanevi canlı",
    "HÜMAKUŞU"
  ],
  [
    "Bir ilacın bir defada veya bir günde alınması gereken miktarının fazlasını kullanma",
    "DOZAŞIMI"
  ],
  ["Mecazen, “Çok eskimiş olmak, değerini ve güzelliğini yitirmek", "DÖKÜLMEK"],
  ["Konuk ağırlayan kimse, kurum, şehir veya ülke", "EVSAHİBİ"],
  [
    "“Arkası kesilmeyen kalabalıklar halinde” anlamında bir ikileme",
    "AKINAKIN"
  ],
  [
    "Geçmişte, mahkemece ispatlanıp cezalandırılmış bir suç işlemiş olan",
    "SABIKALI"
  ],
  ["Birine kötü davranmak veya onu kızdıracak şakalar yapmak", "UĞRAŞMAK"],
  // [
  //   "Mecazen, “Kendini kabul ettirmek, kendine sağlam bir yer sağlamak” anlamında bir tabir",
  //   "TUTUNMAK"
  // ],
  // [
  //   "Yerel para biriminin, başka bir para birimi veya altın gibi başka bir değere bağlandığı düzen",
  //   "SABİTKUR"
  // ],

//9 Kelime
  [
    "Hayati tehlike içeren bir durumdan kurtulup yaşamını sürdürmek",
    "SAĞKALMAK"
  ],
  ["Mateme bürünmek", "YASTUTMAK"],
  ["Birine çok büyük iyiliği, yardımı dokunan kimse.", "VELİNİMET"],
  ["Ampermetre”nin Türkçe kökenli karşılığı", "AKIMÖLÇER"],
  ["Mecazi anlamda, “Beklenmedik bir durumdan çok etkilenmek", "SARSILMAK"],
  ["Hz.Hamza'nın Allah'ın aslanı anlamına gelen lakabı", "ESEDULLAH"],
  ["Mecazi anlamda “Bir yalana inandırmak", "YUTTURMAK"],
  ["Kavuniçi ile pembe arası bir renk", "YAVRUAĞZI"],
  // [
  //   "Ani ürperti, korku, heyecan anlarinda soylenen bir refleks cumlesi",
  //   "ÖDÜSITMAK"
  // ],
  // ["Saçmalık. (Yeri ve değeri olmayan söz, davranış içinde olma)", "Absürtlük"],

//10 harf
  [
    "Göz, Burun, Kulak, Dil ve Derinin her biri” için kullanılan bir tabir",
    "DUYUORGANI"
  ],
  [
    "Karşılıksız yapılan bir iyilik için duyulan minnettarlık, memnuniyet ve minnet",
    "MÜTEŞEKKİR"
  ],
  ["Ölüme direnme, hayata tutunma gayreti", "YAŞAMAAZMİ"],
  ["Aşkmerdiveni” de denen bitkinin bir diğer adı", "EĞRELTİOTU"],
  ["Bir bütünü keserek ince ve yassı parçalara ayırmak", "DİLİMLEMEK"],
  ["Aktarmasız yapılan hava yolculuğu", "DİREKTUÇUŞ"],
  ["Çekerek ve iterek hırpalama", "TARTAKLAMA"],
  ["Kısa alt geçit", "BATTIÇIKTI"],
  // ["Bağımlılık” anlamında bir söz", "MÜPTELALIK"],
  // [
  //   "Spor dallarından doğmuş, “Paylaşarak ortaklaşa yapılan iş” anlamında da kullanılan bir tabir",
  //   "TAKIMOYUNU"
  // ],
];

class _MyHomePageState extends State<MyHomePage> {
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

  //Kullanıcıların kaçıncı soruda olduğu
  int questionNumber = 1;

  //Oyuncular
  int userCounter = 0;
  List userList = [
    [
      0, //id
      'Salih', //İsim
      0, //Puan
      'https://avatars.githubusercontent.com/u/35336217?s=460&u=da16c4a1ee3850237dc738ff3709aebea16e6bb7&v=4' //Resim
    ],
    [
      1,
      'Erdoğan',
      0,
      'https://media-exp1.licdn.com/dms/image/C4D03AQEN5XnDzldS5A/profile-displayphoto-shrink_200_200/0/1545321056710?e=1620259200&v=beta&t=SAuf7qRkhZ6s7YymDmbbl98TTyUU7n1LjImVeh__MhM'
    ],
    // [
    //   2,
    //   'Mustafa',
    //   0,
    //   'https://media-exp1.licdn.com/dms/image/C4E35AQEqn5yEijfbzQ/profile-framedphoto-shrink_200_200/0/1613734314377?e=1615147200&v=beta&t=-0hjlR9zEvdx6TyBr8jmzuynNbdd8xTT3hU8-fwAsIc'
    // ],
    [2, 'Ahmet', 0, ''],
    [3, 'Çetin', 0, ''],
  ];

  //Dorğu ve yanlış buttonlarına her soruda bir kez basılabilsin.
  bool isTrueButton = false;
  bool isFalseButton = false;

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
      // appBar: AppBar(
      //   title: Text("KELİME OYUNU"),
      // ),

      //-----------------------BOTTOMNAVBAR USER PUANLARI ve İSİMLERİ-----------------------
      bottomNavigationBar: BottomAppBar(
        color: Colors.green.shade300,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Chip(
              //   label: Text(
              //     'Berkay',
              //     style: TextStyle(fontWeight: FontWeight.bold),
              //   ),
              //   backgroundColor: Colors.white,
              //   avatar: CircleAvatar(
              //     backgroundImage: NetworkImage(
              //         'https://avatars.githubusercontent.com/u/37087597?s=460&u=1af871ed70165792c70a755a195d98cb031c11d5&v=4'),
              //   ),
              // ),
              for (var z = 0; z < userList.length; z++)
                _circleButton("${userList[z][1]}", userList[z][2]),
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
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //SORU NUMARASI
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Container(
                        width: 60,
                        height: 50,
                        child: Center(child: Text('$questionNumber.Soru')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.red),
                        ),
                      ),
                    ),

                    //SORU
                    Container(
                      //color: Colors.red,
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
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: //Text('${userList[userCounter][1]}'),
                          CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: userList[userCounter][3] == ''
                              ? NetworkImage(
                                  'https://avatars.githubusercontent.com/u/37087597?s=460&u=1af871ed70165792c70a755a195d98cb031c11d5&v=4')
                              : NetworkImage('${userList[userCounter][3]}'),
                          //backgroundColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //------------------------SORU CEVABI 6GEN'LER-------------
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

          //------------------PUANLAR------------------
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
                // SizedBox(
                //   width: 40,
                // ),

                isFalseButton
                    ? Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('YANLIŞ'),
                            Padding(padding: EdgeInsets.all(5)),
                            CircleAvatar(
                              backgroundColor: Colors.red[600],
                              radius: 28,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 25,
                                child: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Text(""),

                isTrueButton
                    ? Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('DOĞRU'),
                            Padding(padding: EdgeInsets.all(5)),
                            CircleAvatar(
                              backgroundColor: Colors.green[600],
                              radius: 28,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 25,
                                child: Icon(
                                  Icons.check_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Text(""),

                //BİREYSEL PUAN
                // Column(
                //   children: [
                //     Text('TOPLAM PUAN'),
                //     Padding(padding: EdgeInsets.all(5)),
                //     CircleAvatar(
                //       backgroundColor: Colors.blue,
                //       radius: 28,
                //       child: CircleAvatar(
                //         backgroundColor: Colors.white,
                //         radius: 25,
                //         child: Text(
                //           "$toplamPuan",
                //           style: TextStyle(fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
          //------------------DOĞRU YANLIŞ İLERİ GERİ BUTTONLAR------------------
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
                          //Kullanıcı Resimleri İçin Kullanıldı.
                          if (userCounter > 0) {
                            userCounter--;
                          }

                          randomNumberList.clear();
                          i--;
                          print('$i Soruya Geçildi');
                          counter = 0;
                          visibleListFun(sorular[i][1]);
                          _addCard = sorular[i][1].length;
                          puan = (_addCard * 100);

                          isTrueButton = false;
                          isFalseButton = false;
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
                      !isFalseButton
                          ? setState(
                              () {
                                //Soru bilinmezse açılmayan harf kadar - puan alsın.
                                puan = (_addCard - counter) * 100;
                                userList[userCounter][2] -= puan;

                                randomNumberList.clear();
                                print('YANLIŞ BİLDİN');
                                showAnswer(true);
                                print('YANLIŞ BUTTON COUNTER $counter');
                                isFalseButton = true;
                              },
                            )
                          : null;
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
                      !isTrueButton
                          ? setState(() {
                              //Açilmayan harf sayısı başına 100 puan vereceğiz.
                              //Burada kaç harf açılmış ona bakıyoruz. Cevap uzunluğumuzdan(_addCard) açılan harf sayısını çıkartıp puanı hesaplıyoruz.
                              puan = (_addCard - counter) * 100;
                              //toplamPuan += puan;
                              userList[userCounter][2] += puan;

                              randomNumberList.clear();
                              showAnswer(true);
                              print(
                                  'TÜM CEVAPLAR AÇILDI - DOĞRU BİLDİN - $puan PUAN Eklendi. Toplam $toplamPuan puana ulaştın. Açılan Harf: $counter');

                              isTrueButton = true;
                            })
                          : null;
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
                      showAnswer(false); //Soru Cevap Kapansın
                      setState(() {
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

                          //Kullanıcı Resimleri İçin Kullanıldı.
                          userCounter++;
                          if (userCounter == userList.length) {
                            questionNumber++;
                            userCounter = 0;
                          }

                          //Buttonlar bir kez basılsın
                          isTrueButton = false;
                          isFalseButton = false;
                        }
                        //print('AddCard Şuan => $_addCard');
                      });
                    },
                  ),
                ),
                //Text('Geçerli Soru: $i'),
                //Text('Add Card Şuan => $_addCard'),
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
        label: Text(
          '$userPoint Puan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        avatar: CircleAvatar(
          backgroundColor: Colors.green,
          child: Text(
            userName[0],
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
