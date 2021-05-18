import 'package:flutter/material.dart';
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
  var numero = 0;
  var submetido = false;
  bool acertando;
  var primeiraTentativa = true;
  var pontuacao = 0;

  var selecionadas = [
    false,
    false,
    false,
    false,
  ];

  void _selecionar(int i) {
    setState(() {
      selecionadas[i] = true;
    });
  }

  void _acertar() {
    setState(() {
      acertando = true;
      submetido = true;
    });
  }

  void _proxima() {
    setState(() {
      if (primeiraTentativa) pontuacao++;
      primeiraTentativa = true;
      acertando = null;
      submetido = false;
      numero++;
      for (int i = 0; i < 4; i++) selecionadas[i] = false;
    });
    print(pontuacao);
  }

  void _errar() {
    setState(() {
      primeiraTentativa = false;
      acertando = false;
      submetido = true;
    });
  }

  void _tentarDeNovo() {
    //widget.embaralhar(widget.materia);
    acertando = null;
    submetido = false;
    //numero = 0;
    for (int i = 0; i < 4; i++) selecionadas[i] = false;
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
                      'Não',
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
        child: Builder(
          builder: (_) {
            if (numero < widget.materia.listaQuestoes.length) {
              return Questao(
                questao: widget.materia.listaQuestoes[widget.ordem[numero]],
                acertar: _acertar,
                proxima: _proxima,
                acertando: acertando,
                numero: widget.ordem[numero],
                submetido: submetido,
                errar: _errar,
                tentarDeNovo: _tentarDeNovo,
                menu: () => _pausar(context),
                selecionar: _selecionar,
                selecionadas: selecionadas,
              );
            } else {
              return Gabaritado(widget.materia, widget.voltarAoMenu, pontuacao);
            }
          },
        ),
      ),
    );
  }
}
