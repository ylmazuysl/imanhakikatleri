import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iman_hakikatleri/gidis.dart';
import 'package:iman_hakikatleri/imanhakikatleri.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  ImanHakikatleri selectedimanhakikati = ImanHakikatleri("", "", "");

  List<ImanHakikatleri> imanhakikatleri = [
    ImanHakikatleri("assets/mantis2.jpg", "ne bilim",
        "Mükemmel Dövüşçü Tavus Kuşu Mantis Karidesi"),
    ImanHakikatleri(
        "assets/su2.jpg", "ne bilim", "Su Hakkında Hayrete Düşüren Detay"),
    ImanHakikatleri(
        "assets/koni_salyangozu2.jpg", "ne bilim", "Koni Salyangozu"),

    ImanHakikatleri(
        "assets/kalp.jpg", "ne bilim", "Kalpteki Elektronik Sistem Ve Kalbin İçindeki Jeneratör"),

    ImanHakikatleri(
        "assets/troll_saclı_bocek2.jpg", "ne bilim", "Troll-Saçlı Böcek"),
    ImanHakikatleri(
        "assets/kutu-deniz-anası.jpg", "ne bilim", "Kutu deniz anası"),
    ImanHakikatleri(
        "assets/umbonia_spinosa2.jpg", "ne bilim", "Böyle Boynuz Görmediniz!"),
    ImanHakikatleri(
        "assets/kurukafa_suratlı_tırtıl2.jpg", "ne bilim", "Kurukafa Suratlı Tırtıl"),

    ImanHakikatleri(
        "assets/panda-ant.png", "ne bilim", "Pandaya Benzeyen Karınca Görürseniz Şaşırmayın :)"),

    ImanHakikatleri(
        "assets/karbon_elementi.jpg", "ne bilim", "Karbon Elementinin Mucizevi Oluşumu"),

    ImanHakikatleri(
        "assets/insan_yuruyusu3.jpg", "ne bilim", "Teknolojinin Ulaşamadığı Tasarım: İnsan Yürüyüşü"),

    ImanHakikatleri(
        "assets/yılan_taklidi_tırtıl3.jpg", "ne bilim", "Yılan Taklidi Yapan Tırtıl (Hemeroplanes Triptolemus)"),

    ImanHakikatleri(
        "assets/sinir_hucreleri2.png", "ne bilim", "Sinir Hücrelerindeki Kimyasal İletişim"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(12.0),
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 9,
            mainAxisSpacing: 9,
            itemCount: imanhakikatleri.length,
            itemBuilder: (BuildContext context, index) {
              return buildBody(context, index);
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            }),
      ),
    );
  }

  Widget buildBody(BuildContext context, index) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imanhakikatleri[index].img),
            )),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 12, right: 12, bottom: 15),
            child: Text(
              imanhakikatleri[index].statement,
              style: TextStyle(
                  fontSize: 22,
                  wordSpacing: 0,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    ),
                  ]),
            ),
          ),
        ),
      ),
      onTap: (){
        setState(() {
          selectedimanhakikati = imanhakikatleri[index];
        });
        print("sadsadsa");
        Navigator.push(context, MaterialPageRoute(builder:(context)=>ImanHakikati(selectedimanhakikati)));
      },
    );
  }
}
