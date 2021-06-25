import 'dart:async';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:vize/api/Doviz.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';


class Grafik1 extends StatefulWidget {
  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];

  @override
  State<StatefulWidget> createState() => Grafik1State();
}

class Grafik1State extends State<Grafik1> {
  Doviz doviz;
  Future<Doviz> veri;
  List<DovizListem> dovizListesi = List<DovizListem>();
  String url =
      "https://v6.exchangerate-api.com/v6/674f2f81755fa62c1804378f/latest/USD";

  Future<Doviz> dovizleriGetir() async {
    var response = await http.get(Uri.parse(url));
    var decodeJson = json.decode(response.body);
    doviz = Doviz.fromJson(decodeJson);
    return doviz;
  }
  final Color barBackgroundColor = const Color(0xff72d8bf);
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = -1;

  bool isPlaying = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    veri = dovizleriGetir();
  }
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 129, 229, 205),
      body: FutureBuilder(
          future: veri,
          builder: (context, AsyncSnapshot<Doviz> gelenDoviz) {
            if (gelenDoviz.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (gelenDoviz.connectionState == ConnectionState.done) {
              gelenDoviz.data.conversionRates.forEach((key, value) {
                dovizListesi
                    .add(DovizListem(paraAdi: key, paraDegeri: value));
              });
              return Center(
                child: Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      AspectRatio(
                        aspectRatio: 0.7,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          color: const Color.fromARGB(255, 43, 66, 96),

                          child: AspectRatio(
                          aspectRatio: 1,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                            color: const Color(0xff81e5cd),
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        'Dolar',
                                        style: TextStyle(
                                            color: const Color(0xff0f4a3c), fontSize: 24, fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Dolar Kuru Grafiği',
                                        style: TextStyle(
                                            color: const Color(0xff379982), fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 38,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: BarChart(
                                            isPlaying ? randomData() : mainBarData(),
                                            swapAnimationDuration: animDuration,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      icon: Icon(
                                        isPlaying ? Icons.pause : Icons.play_arrow,
                                        color: const Color(0xff0f4a3c),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isPlaying = !isPlaying;
                                          if (isPlaying) {
                                            refreshState();
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.white10),
                ),
              );
            }
          }),
    );

  }

  BarChartGroupData makeGroupData(
      int x,
      double y, {
        bool isTouched = false,
        Color barColor = Colors.white,
        double width = 22,
        List<int> showTooltips = const [],
      }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y + 1 : y,
          colors: isTouched ? [Colors.yellow] : [barColor],
          width: width,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            y: 20,
            colors: [barBackgroundColor],
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {

    switch (i) {
      case 0:
        return makeGroupData(0, dovizListesi[0].paraDegeri.toDouble(), isTouched: i == touchedIndex);
      case 1:
        return makeGroupData(1, dovizListesi[44].paraDegeri.toDouble(), isTouched: i == touchedIndex);
      case 2:
        return makeGroupData(2, dovizListesi[139].paraDegeri.toDouble(), isTouched: i == touchedIndex);
      case 3:
        return makeGroupData(3, dovizListesi[118].paraDegeri.toDouble(), isTouched: i == touchedIndex);
      case 4:
        return makeGroupData(4, dovizListesi[77].paraDegeri.toDouble(), isTouched: i == touchedIndex);
      case 5:
        return makeGroupData(5, dovizListesi[10].paraDegeri.toDouble(), isTouched: i == touchedIndex);
      case 6:
        return makeGroupData(6, dovizListesi[112].paraDegeri.toDouble(), isTouched: i == touchedIndex);
      default:
        return throw Error();
    }
  });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = 'Dolar';
                  break;
                case 1:
                  weekDay = 'Euro';
                  break;
                case 2:
                  weekDay = 'Türk Lirası';
                  break;
                case 3:
                  weekDay = 'Rus Rublesi';
                  break;
                case 4:
                  weekDay = 'Won';
                  break;
                case 5:
                  weekDay = 'Manat';
                  break;
                case 6:
                  weekDay = 'Rupi';
                  break;
                default:
                  throw Error();
              }
              return BarTooltipItem(
                weekDay + '\n',
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: (rod.y - 1).toString(),
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
        touchCallback: (barTouchResponse) {
          setState(() {
            if (barTouchResponse.spot != null &&
                barTouchResponse.touchInput is! PointerUpEvent &&
                barTouchResponse.touchInput is! PointerExitEvent) {
              touchedIndex = barTouchResponse.spot.touchedBarGroupIndex;
            } else {
              touchedIndex = -1;
            }
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) =>
          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'D';
              case 1:
                return 'E';
              case 2:
                return 'TL';
              case 3:
                return 'RU';
              case 4:
                return 'KR';
              case 5:
                return 'AZ';
              case 6:
                return 'Pa';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) =>
          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'D';
              case 1:
                return 'E';
              case 2:
                return 'TL';
              case 3:
                return 'RU';
              case 4:
                return 'KR';
              case 5:
                return 'AZ';
              case 6:
                return 'Pa';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 1:
            return makeGroupData(1, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 2:
            return makeGroupData(2, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 3:
            return makeGroupData(3, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 4:
            return makeGroupData(4, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 5:
            return makeGroupData(5, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 6:
            return makeGroupData(6, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          default:
            return throw Error();
        }
      }),
    );
  }

  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(animDuration + const Duration(milliseconds: 50));
    if (isPlaying) {
      await refreshState();
    }
  }
}