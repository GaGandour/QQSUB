import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../adHelper.dart';
import '../widgets/gabaritado.dart';
import '../models/materia.dart';
import '../widgets/questao.dart';

class Quiz extends StatefulWidget {
  final Materia materia;
  final Function voltarAoMenu;
  final Decoration degrade;
  final List ordem;
  final Function embaralhar;
  final Function resetar;
  Quiz({
    @required this.materia,
    @required this.voltarAoMenu,
    @required this.degrade,
    @required this.ordem,
    @required this.embaralhar,
    @required this.resetar,
  });
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _total;
  final _pontuacaoMinima = 0.85;
  var _numero = 0;
  var _submetido = false;
  bool _acertando;
  var _primeiraTentativa = true;
  var _pontuacao = 0;

  var _selecionadas = [
    false,
    false,
    false,
    false,
  ];

  BannerAd _myBannerAd;
  bool _bannerIsLoading;

  InterstitialAd _myInterstitialAd;

  @override
  void initState() {
    super.initState();

    _total = widget.materia.listaQuestoes.length;

    _myBannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: AdHelperQuestao.bannerAdUnitId,
      request: AdRequest(),
      listener: AdListener(onAdLoaded: (_) {
        setState(
          () {
            _bannerIsLoading = true;
          },
        );
      }, onAdFailedToLoad: (_, error) {
        print("Ad Failed to Load with Error: $error");
      }),
    );

    _myInterstitialAd = InterstitialAd(
      adUnitId: AdHelperGabaritado.interstitialAdUnitId,
      listener: AdListener(
        onAdFailedToLoad: (_, error) {
          print("Ad Failed to Load with Error: $error");
        },
      ),
      request: AdRequest(),
    );

    _myBannerAd.load();
    _myInterstitialAd.load();
  }

  Widget checkForAd() {
    if (_bannerIsLoading == true) {
      return Container(
        child: AdWidget(ad: _myBannerAd),
        width: _myBannerAd.size.width.toDouble(),
        height: _myBannerAd.size.height.toDouble(),
        alignment: Alignment.center,
      );
    } else
      return CircularProgressIndicator();
  }

  void dispose() {
    _myBannerAd?.dispose();
    super.dispose();
  }

  void _selecionar(int i) {
    setState(() {
      _selecionadas[i] = true;
    });
  }

  void _acertar() {
    setState(() {
      _acertando = true;
      _submetido = true;
    });
  }

  void _proxima() {
    setState(() {
      if (_primeiraTentativa) _pontuacao++;
      _primeiraTentativa = true;
      _acertando = null;
      _submetido = false;
      _numero++;
      for (int i = 0; i < 4; i++) _selecionadas[i] = false;
    });
  }

  void _errar() {
    setState(() {
      _primeiraTentativa = false;
      _acertando = false;
      _submetido = true;
    });
  }

  void _tentarDeNovo() {
    //widget.embaralhar(widget.materia);
    _acertando = null;
    _submetido = false;
    //numero = 0;
    for (int i = 0; i < 4; i++) _selecionadas[i] = false;
    widget.resetar(widget.materia.titulo);
  }

  void _pausar(BuildContext ctx) {
    showModalBottomSheet(
      shape: ContinuousRectangleBorder(),
      backgroundColor: Color.fromRGBO(255, 255, 255, 0),
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 3,
          vertical: 3,
        ),
        child: Card(
          shape: ContinuousRectangleBorder(),
          color: Color.fromRGBO(255, 255, 255, 0.85),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 0,
                ),
                child: const Text(
                  'Tem certeza que quer voltar ao menu?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      widget.voltarAoMenu();
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Sim',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: Navigator.of(context).pop,
                    child: Text(
                      'N??o',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Color.fromRGBO(93, 248, 170, 1),
      elevation: 0, // Mudar para 0 depois
      title: FittedBox(child: Text("${widget.materia.titulo}")),
      actions: [
        Builder(
          builder: (context) => GestureDetector(
            onTap: () => _pausar(context),
            child: Image.asset(
              'assets/images/botoes/QuimiquITA_newpause.png',
              scale: 0.7,
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
        decoration: widget.degrade,
        child: Column(
          children: [
            Expanded(
              child: Builder(
                builder: (_) {
                  if (_numero < widget.materia.listaQuestoes.length) {
                    return Questao(
                      questao:
                          widget.materia.listaQuestoes[widget.ordem[_numero]],
                      acertar: _acertar,
                      proxima: _proxima,
                      acertando: _acertando,
                      progresso: _numero,
                      submetido: _submetido,
                      errar: _errar,
                      tentarDeNovo: _tentarDeNovo,
                      menu: () => _pausar(context),
                      selecionar: _selecionar,
                      selecionadas: _selecionadas,
                      totalDeQuestoes: _total,
                    );
                  } else {
                    if (_pontuacao / widget.materia.listaQuestoes.length <
                        _pontuacaoMinima) _myInterstitialAd.show();
                    return Gabaritado(widget.materia, widget.voltarAoMenu,
                        _pontuacao, _pontuacaoMinima);
                  }
                },
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
