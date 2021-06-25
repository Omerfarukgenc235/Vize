import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vize/Grafik/Grafik.dart';
import 'package:vize/Grafik/Grafik1.dart';
import 'package:vize/sql/screens/yapilacakliste.dart';
import 'package:vize/api/RemoteDoviz.dart';
import '../myhomepage.dart';
import '../ulkeler/turkey.dart';
import '../yarisma/yarisma.dart';
import '../otel/gidilen.dart';

class Menuler extends StatefulWidget {
  @override
  _MenulerState createState() => _MenulerState();
}

class _MenulerState extends State<Menuler> {
  String ulke = '';
  String sehir = '';
  String dolarkodu = '';
  String resim1 = '';
  String nufus = '';
  String baskent = '';
  String para = '';
  String ulkeaciklama = '';
  String bayrak = '';

  void TurkeyGonder() {
    var data = [];
    ulke = "Türkiye";
    sehir = "Ankara";
    dolarkodu = "139";
    resim1 = "resimler/turkiye.jpg";
    nufus = "83M";
    baskent = "Ankara";
    para = "Türk Lirası";
    ulkeaciklama =
        "Türkiye ya da resmî adıyla Türkiye Cumhuriyeti, topraklarının büyük bölümü Anadolu'da, küçük bir bölümü ise Balkan Yarımadası'nın güneydoğu uzantısı olan Trakya'da yer alan ülke. Kuzeybatıda Bulgaristan, batıda Yunanistan, kuzeydoğuda Gürcistan, doğuda Ermenistan, İran ve Azerbaycan'ın ekslav toprağı Nahcivan, güneydoğuda ise Irak ve Suriye komşusudur. Güneyini Akdeniz, batısını Ege Denizi ve kuzeyini Karadeniz çevreler. Marmara Denizi ise İstanbul Boğazı ve Çanakkale Boğazı ile birlikte Anadolu'yu Trakya'dan yani Asya'yı Avrupa'dan ayırır. Türkiye, Avrupa ve Asya'nın kavşak noktasında yer alması sayesinde önemli bir jeostratejik güce sahiptir.";
    bayrak = "TR";
    data.add(ulke);
    data.add(sehir);
    data.add(dolarkodu);
    data.add(resim1);
    data.add(nufus);
    data.add(baskent);
    data.add(para);
    data.add(ulkeaciklama);
    data.add(bayrak);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Turkey(),
            settings: RouteSettings(
              arguments: data,
            )));
  }
  void AmerikaGonder() {
    var data = [];
    ulke = "Amerika";
    sehir = "Washington, D.C., US";
    dolarkodu = "0";
    resim1 = "resimler/amerika.png";
    nufus = "328,2 milyon";
    baskent = "Washington,DC";
    para = "Amerikan Doları";
    bayrak = "US";
    ulkeaciklama =
    "50 eyalet ve bir federal bölgeden oluşan Amerika Birleşik Devletleri, İngiltere ile sürdürdüğü büyük mücadeleler sonucunda 4 Temmuz 1876 yılında kurulmuş demokratik, federal, anayasal bir cumhuriyettir. Nüfusunu dünyanın dört bir tarafından gelen göçmenlerin oluşturduğu Amerika Birleşik Devletleri, Çin ve Hindistan'dan sonra dünyanın en kalabalık 3. ülkesidir. Halen yoğun bir şekilde göç alan ülke, bu nedenle gelişmiş ülkeler arasında nüfus artış hızı en yüksek olanlardan biridir. Bu özellikleri ile nüfus çeşitliliği bakımından dünyanın en zengin ülkesi olan Amerika Birleşik Devletleri'nde İngilizceden sonra en çok konuşulan dil İspanyolcadır. SSCB'nin yıkılmasıyla dünyanın tek süper gücü konumuna gelen ülke, bugün de birçok açıdan dünyanın cazibe merkezi olma özelliğini sürdürmektedir.";
    data.add(ulke);
    data.add(sehir);
    data.add(dolarkodu);
    data.add(resim1);
    data.add(nufus);
    data.add(baskent);
    data.add(para);
    data.add(ulkeaciklama);
    data.add(bayrak);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Turkey(),
            settings: RouteSettings(
              arguments: data,
            )));
  }
  void RusyaGonder() {
    var data = [];
    ulke = "Rusya";
    sehir = "Moscow, RU";
    dolarkodu = "118";
    resim1 = "resimler/rusya.png";
    nufus = "144,4 milyon";
    baskent = "Moskova";
    para = "Rus Rublesi";
    ulkeaciklama =
    "Rusya 17 milyon kilometre karelik alanıyla Dünyanın en büyük ülkesidir. Dünyanın sekizde birini kaplar Asya ve Avrupa kıtalarına yayılmıştır. Çok milletli bir ülke olan Rusya, nüfusun %80 etnik kökeni Rustur. Fakat 150′den fazla etnik köken ile birlikte yaşar. Ülkenin resmi dili Rusçadır. Yaygın konuşulan yabancı diller İngilizce, Almanca, Fransızca, İspanyolca ve İtalyancadır. Rusya’nın resmi para birimi Rubledir. En büyük şehiri ve başkenti 11 milyonluk nüfusuyla Moskovadır. Rusya’da 1000′den fazla şehir bulunmaktadır. En büyük şehirleri Moskova, St. Petersburg, Nijni Novgorod, Kazan, Krasnodar, Novosibirsk, Rostov, Astrahan, Veliky Novgorod ve Saratovdur.";
    bayrak = "RU";
    data.add(ulke);
    data.add(sehir);
    data.add(dolarkodu);
    data.add(resim1);
    data.add(nufus);
    data.add(baskent);
    data.add(para);
    data.add(ulkeaciklama);
    data.add(bayrak);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Turkey(),
            settings: RouteSettings(
              arguments: data,
            )));
  }
  void KoreGonder() {
    var data = [];
    ulke = "Kore";
    sehir = "Seoul, KR";
    dolarkodu = "77";
    resim1 = "resimler/seul.png";
    nufus = "51,71 milyon";
    baskent = "Seul";
    para = "Kore Wonu";
    ulkeaciklama =
    "Kore 2.Dünya Savaşı'ndan sonra Sovyetler Birliği ve ABD'nin askeri güçlerinin işgalinden kurtuluşundan sonra,Kuzey Kore ve Güney Kore ikiye bölündü.Güney Kore ikinci bir demokrasi ülkesi olarak 1948 yılında kuruldu.Güney Kore başkanlık sistemine göre yönetilmekte ve 16 idari bölüm içeren bir cumhuriyet devletidir.Gelişmiş ülke statüsünde yer alan ülkede yaşam standartları da oldukça yüksek seviyededir.";
    bayrak = "KR";
    data.add(ulke);
    data.add(sehir);
    data.add(dolarkodu);
    data.add(resim1);
    data.add(nufus);
    data.add(baskent);
    data.add(para);
    data.add(ulkeaciklama);
    data.add(bayrak);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Turkey(),
            settings: RouteSettings(
              arguments: data,
            )));
  }
  void AzerbaycanGonder() {
    var data = [];
    ulke = "Azerbaycan";
    sehir = "Baku, AZ";
    dolarkodu = "10";
    resim1 = "resimler/azerbaycan.png";
    nufus = "10,02 milyon";
    baskent = "Bakü";
    para = "Manat";
    ulkeaciklama =
    "1918-1920 arasında 2 yıl bağımsız kalan Azerbaycan, 70 yıllık Sovyet döneminin ardından 26 yıldır dünya arenasında yeniden bağımsız bir devlet olarak yer alıyor.Hazar Denizi kıyısında bulunan, Rusya, İran, Gürcistan, Ermenistan ve Türkiye ile komşu ülkede, resmi dil olarak Türkçe kökenli Azerbaycanca konuşuluyor.Topraklarının yüzde 20'si Ermenistan işgali altında, 1 milyon insanı mülteci durumunda olan Azerbaycan, bir taraftan Dağlık Karabağ ve etrafındaki illeri işgalden kurtarmak için müzakereler yürütüyor, diğer taraftan ordusunu olası savaşa karşı güçlendirmeye çalışıyor.Azerbaycan, doğal güzellikleri ve çok sayıda tarihi yapıya sahip olmasıyla tanınıyor. Ülke, son dönemde Rusya, Avrupa ve özellikle Körfez ülkelerinden gelen turistleri ağırlıyor.Azerbaycan, tarihi ve çağdaş yapıları iç içe barındıran başkenti Bakü, her adımda geçmişin izlerini taşıyan doğal güzelliklere sahip Gence, Şeki, Guba ve Lenkeran gibi illeri, geleneksel müziği, sanata ve sanatçıya verdiği değer, Kafkasya, İran ve Türk mutfağının harmanlandığı yemek kültürü ile turizm potansiyeli yüksek ülkeler arasında gösteriliyor.Dünyada 11 iklim çeşidinden 9'una sahip Azerbaycan'ın ovalarında ılıman, yüksek kesimlerinde sert iklimin etkileri görülüyor.Azerbaycan ayrıca Mersin balığından üretilen siyah havyarıyla dünyaca ün kazanmış durumda. ";
    bayrak = "AZ";
    data.add(ulke);
    data.add(sehir);
    data.add(dolarkodu);
    data.add(resim1);
    data.add(nufus);
    data.add(baskent);
    data.add(para);
    data.add(ulkeaciklama);
    data.add(bayrak);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Turkey(),
            settings: RouteSettings(
              arguments: data,
            )));
  }
  void PakistanGonder() {
    var data = [];
    ulke = "Pakistan";
    sehir = "Islamic Republic of Pakistan, PK";
    dolarkodu = "112";
    resim1 = "resimler/islam.png";
    nufus = "216,6 milyon";
    baskent = "İslamabat";
    para = "Pakistan Rupisi";
    ulkeaciklama =
    "Dünyanın en kalabalık Müslüman nüfusa sahip ülkelerinden Pakistan, Asya‘da çok önemli stratejik bir coğrafi konumda bulunuyor. Resmi adı Pakistan İslam Cumhuriyeti olan ülkenin batısında Afganistan ve İran, kuzeyinde Çin, doğusunda Hindistan, güneyinde ise Umman Denizi bulunuyor.1947’ye kadar İngiliz sömürgesi olan ülke bağımsızlığını 14 Ağustos 1947’de elde etti. Pakistan bağımsızlığını elde ettikten sonra doğu bölgesi Bangladeş olarak ayrıldı. Günümüzde Pakistan Pencap, Sind, Kuzeybatı Sınır Eyaleti, Hayber-Pahtunhva, İslamabad, Keşmir, Aşiretler Bölgesi ve Belucistan olmak üzere 8 bölgeden oluşuyor.";
    bayrak = "PK";
    data.add(ulke);
    data.add(sehir);
    data.add(dolarkodu);
    data.add(resim1);
    data.add(nufus);
    data.add(baskent);
    data.add(para);
    data.add(ulkeaciklama);
    data.add(bayrak);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Turkey(),
            settings: RouteSettings(
              arguments: data,
            )));
  }
  void ItalyaGonder() {
    var data = [];
    ulke = "İtalya";
    sehir = "Rome, IT";
    dolarkodu = "44";
    resim1 = "resimler/italya.png";
    nufus = "60,36 milyon";
    baskent = "Roma";
    para = "Euro";
    ulkeaciklama =
    "İtalya Güney Avrupa'da Akdeniz'e kıyısı olan bir yarımadadır. İsviçre Fransa Slovenya ve Avusturya ile komşudur. Ayrıca Sicilya ve Sardunya da İtalya'ya bağlıdır. İtalya Avrupa'nın en kalabalık 4 Ülkesinden biridir. Yüzölçümü 302,000 metrekaredir. İtalya'nın iklimi ılıman bir iklimdir. İtalya Roma İmparatorluğu’na ev sahipliği yapmış ülkelerden biridir. Dini inancı Hristiyan Katolik’tir. Hristiyan Katolik mezhebinin merkezi de Vatikan’dır. Tarihi miras açısından son derece zengin bir ülkedir. İtalya çok fazla turist almaktadır. İtalya birçok kuruluşa üye ülkelerden biridir. G7, Avrupa Birliği, NATO, OECD, Birleşmiş Milletler, Dünya Ticaret Örgütüdür. Ekonomisi oldukça gelişmiştir. Turizm açısından da çok fazla turist alan ülkelerden biridir. İtalya'nın başkenti Roma’dır. İtalya 20 bölgeye ayrılmaktadır. İtalya'nın içinde Vatikan, San Marino ve İtalya 3 farklı ülke gibi düşünülebilir. İtalya'nın en turistik şehirleri Roma, Milano, Napoli, Palermo, Floransa, Bari, Venedik, Verona ve Pisa’dır.";
    bayrak = "it";
    data.add(ulke);
    data.add(sehir);
    data.add(dolarkodu);
    data.add(resim1);
    data.add(nufus);
    data.add(baskent);
    data.add(para);
    data.add(ulkeaciklama);
    data.add(bayrak);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Turkey(),
            settings: RouteSettings(
              arguments: data,
            )));
  }
  void AlmanyaGonder() {
    var data = [];
    ulke = "Almanya";
    sehir = "Berlin, DE";
    dolarkodu = "44";
    resim1 = "resimler/almanya.png";
    nufus = "83,02 milyon";
    baskent = "Berlin";
    para = "Euro";
    ulkeaciklama =
    "Almanya Federal Cumhuriyeti 1949’dan beri demokratik, parlamenter bir federal devlettir. 1990’da yeniden birleşen Almanya’da 16 eyalet ve nüfusu 100 binin üzerinde olan 81 kent bulunmaktadır. Almanya Orta Avrupa’da Kuzey Denizi ile Alpler arasında uzanan bir devlettir. Almanya Federal Cumhuriyeti'nin şansölyesi 2005 tarihinden beri Angela Merkel'dir.3,4 milyon nüfusuyla Berlin, Almanya’nın en büyük şehridir. Nüfusu milyonlara ulaşan diğer şehirler Hamburg (1,8 milyon) ve Münih’tir (1,3 milyon). 80 milyonun üzerinde nüfusa sahip Almanya, Rusya’nın ardından Avrupa’nın en fazla nüfusa sahip ikinci ülkesidir. Nüfusun yaklaşık yüzde 7.7’sini göçmenler oluşturmaktadır.";
    bayrak = "de";
    data.add(ulke);
    data.add(sehir);
    data.add(dolarkodu);
    data.add(resim1);
    data.add(nufus);
    data.add(baskent);
    data.add(para);
    data.add(ulkeaciklama);
    data.add(bayrak);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Turkey(),
            settings: RouteSettings(
              arguments: data,
            )));
  }
  final ButtonStyle stil = ElevatedButton.styleFrom(
    minimumSize: Size(350, 70),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.black)),
    primary: Color.fromARGB(255, 42, 42, 42),
    onPrimary: Colors.lightBlueAccent[300],
  );
  final TextStyle dene =
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        ),
        title: Text("Ülkeler Hakkında"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 225, 68, 68),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 225, 68, 68),
              ),
              child: Text(
                'Menüler',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.card_travel),
              title: Text('Bilet Satın Al'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Gidilecek()));
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Döviz Kurları'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RemoteDoviz()));
              },
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Dolar Kuru Grafik'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Grafik1()));
              },
            ),
            ListTile(
              leading: Icon(Icons.pie_chart),
              title: Text('Nüfus Grafik'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Grafik()));
              },
            ),
            ListTile(
              leading: Icon(Icons.my_library_books_rounded),
              title: Text('Yapılacaklar Listesi'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => YapilacakList()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('Kullanıcı Listesi'),
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text('Otel Listesi'),
              onTap: () {
                Navigator.pushNamed(context, "/otel2");
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 106, 28, 28),
              Color.fromARGB(255, 162, 40, 40),
              Color.fromARGB(255, 208, 72, 72),
              Color.fromARGB(255, 208, 72, 72),
            ],
          ),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: SafeArea(
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                // Note: Sensitivity is integer used when you don't want to mess up vertical drag
                int sensitivity = 8;
                if (details.delta.dx > sensitivity) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );

                } else if(details.delta.dx < -sensitivity){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Yarisma()),
                  );                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10)),
                  Text("Ülkeler",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: stil,
                    child: Text("Türkiye", style: dene),
                    onPressed: () {
                      TurkeyGonder();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: stil,
                    child: Text("Amerika", style: dene),
                    onPressed: () {
                      AmerikaGonder();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: stil,
                    child: Text("Rusya", style: dene),
                    onPressed: () {
                     RusyaGonder();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: stil,
                    child: Text("Kore", style: dene),
                    onPressed: () {
                    KoreGonder();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: stil,
                    child: Text("Azerbaycan", style: dene),
                    onPressed: () {
                      AzerbaycanGonder();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: stil,
                    child: Text("Pakistan", style: dene),
                    onPressed: () {
                     PakistanGonder();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: stil,
                    child: Text("İtalya", style: dene),
                    onPressed: () {
                    ItalyaGonder();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: stil,
                    child: Text("Almanya", style: dene),
                    onPressed: () {
                     AlmanyaGonder();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text("Bilgi Yarışması",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: stil,
                    child: Text("Başkent Bilgi Yarışması", style: dene),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Yarisma()),
                      );
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
