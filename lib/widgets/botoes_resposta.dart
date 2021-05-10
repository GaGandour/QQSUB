import 'package:flutter/material.dart';

class BotaoResposta extends StatelessWidget {
  final Map questao;
  final List selecionadas;

  final int index;

  final bool acertando;
  final bool submetido;

  final Function acertar, errar, selecionar;
  BotaoResposta({
    @required this.questao,
    @required this.index,
    @required this.acertar,
    @required this.errar,
    @required this.acertando,
    @required this.submetido,
    @required this.selecionar,
    @required this.selecionadas,
  });

  final _cor = Color.fromRGBO(251, 255, 0, 1);
  final _corCerta = Colors.green;
  final _corErrada = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 60,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Center(
        child: TextButton(
          onPressed: submetido
              ? () {}
              : () {
                  selecionar(index);
                  if (questao['correto'] == index) {
                    acertar();
                  } else {
                    errar();
                  }
                },
          child: Container(
            decoration: BoxDecoration(
              color: submetido
                  ? (questao['correto'] == index
                      ? _corCerta
                      : (selecionadas[index] ? _corErrada : _cor))
                  : _cor,
              border: Border.all(
                color: Color.fromRGBO(159, 91, 0, 1),
                width: 5,
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 60,
            child: Card(
              color: Color.fromRGBO(251, 255, 0, 0),
              elevation: 0,
              shape: ContinuousRectangleBorder(),
              child: Center(
                child: FittedBox(
                  child: Text(
                    questao['respostas'][index],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
