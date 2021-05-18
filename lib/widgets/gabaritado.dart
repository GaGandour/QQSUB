import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../adHelper.dart';
import '../models/materia.dart';

class Gabaritado extends StatefulWidget {
  final Materia materia;
  final Function voltarMenu;
  Gabaritado(this.materia, this.voltarMenu);

  @override
  _GabaritadoState createState() => _GabaritadoState();
}

class _GabaritadoState extends State<Gabaritado> {
  BannerAd _ad;
  bool isLoading;

  @override
  void initState() {
    super.initState();

    _ad = BannerAd(
      size: AdSize.banner,
      adUnitId: AdHelperGabaritado.bannerAdUnitId,
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
    return Container(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
              'Parabéns! Você acabou de gabaritar as ${widget.materia.listaQuestoes.length} questões da categoria ${widget.materia.titulo}!',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Expanded(
              child: SizedBox(
                height: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20.0,
              ),
              child: TextButton(
                onPressed: widget.voltarMenu,
                child: Text(
                  'Voltar ao menu',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            checkForAd(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
