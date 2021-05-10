import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../widgets/lista_opcoes.dart';
import '../adHelper.dart';

class MenuDeMaterias extends StatefulWidget {
  final Function retornar;
  final Function irQuiz;
  final Decoration degrade;
  final Function embaralhar;

  MenuDeMaterias({
    this.retornar,
    this.irQuiz,
    this.degrade,
    this.embaralhar,
  });

  @override
  _MenuDeMateriasState createState() => _MenuDeMateriasState();
}

class _MenuDeMateriasState extends State<MenuDeMaterias> {
  BannerAd _ad;
  bool isLoading;

  @override
  void initState() {
    super.initState();

    _ad = BannerAd(
      size: AdSize.banner,
      adUnitId: AdHelperMenu.bannerAdUnitId,
      request: AdRequest(),
      listener: AdListener(onAdLoaded: (_) {
        setState(
          () {
            isLoading = true;
          },
        );
      }, onAdFailedToLoad: (_, error) {
        print("Ad Failed to Load with Error: $error");
      }),
    );

    _ad.load();
  }

  Widget checkForAd() {
    if (isLoading == true) {
      return Container(
        child: AdWidget(ad: _ad),
        width: _ad.size.width.toDouble(),
        height: _ad.size.height.toDouble(),
        alignment: Alignment.center,
      );
    } else
      return CircularProgressIndicator();
  }

  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Color.fromRGBO(93, 248, 170, 1),
      elevation: 0, // Mudar para 0 depois
      title: FittedBox(child: Text('Escolha a categoria:')),
      actions: [
        Builder(
          builder: (context) => GestureDetector(
            onTap: widget.retornar,
            child: Image.asset(
              'assets/images/botoes/QuimiquITA_newreturn.png',
            ),
          ),
        ),
        SizedBox(width: 15),
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(93, 248, 170, 1),
              Color.fromRGBO(141, 20, 255, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            ListaDeOpcoes(widget.irQuiz, appBar, widget.embaralhar),
            SizedBox(height: 10),
            //checkForAd(),
            //SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
