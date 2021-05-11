import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../widgets/info_card.dart';
import '../models/textoIntrodutorio.dart';
import '../adHelper.dart';

class HomePage extends StatefulWidget {
  final Function play;
  final Decoration degrade;

  HomePage(this.play, this.degrade);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BannerAd _ad;
  bool isLoading;

  @override
  void initState() {
    super.initState();

    _ad = BannerAd(
      size: AdSize.banner,
      adUnitId: AdHelperInicio.bannerAdUnitId,
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

  void _showIntro(BuildContext ctx) {
    // showModalBottomSheet(
    //   backgroundColor: Color.fromRGBO(255, 142, 10, 0),
    //   context: ctx,
    //   builder: (bctx) {
    //     return CartaoApresentador();
    //   },
    // );
    showModalBottomSheet(
      shape: ContinuousRectangleBorder(),
      backgroundColor: Color.fromRGBO(255, 255, 255, 0),
      context: ctx,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 3,
          vertical: 3,
        ),
        child: CartaoApresentador(textoIntrodutorio),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: widget.degrade,
        child: Column(
          children: [
            SizedBox(height: altura * 0.10),
            // Text(
            //   'QuimiquITA',
            //   style: TextStyle(
            //     fontSize: 32,
            //   ),
            // ),
            Container(
              height: altura * 0.4,
              child: Image.asset(
                'assets/images/QuimiquITA_logo2.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: altura * 0.05,
            ),
            Container(
              height: altura * 0.15,
              child: Builder(
                builder: (context) => GestureDetector(
                  onTap: () {
                    //dispose();
                    widget.play();
                  },
                  child: Image.asset(
                    'assets/images/botoes/QuimiquITA_newplayButton.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: altura * 0.04,
            ),
            Container(
              height: altura * 0.1,
              child: Builder(
                builder: (context) => GestureDetector(
                  onTap: () => _showIntro(context),
                  child: Image.asset(
                    'assets/images/botoes/QuimiquITA_info1.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 0,
              ),
            ),
            checkForAd(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
