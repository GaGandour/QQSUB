import 'package:flutter/material.dart';
import './botoes_resposta.dart';
import './info_card.dart';

class Questao extends StatelessWidget {
  final Map questao;
  final List selecionadas;

  final Function acertar;
  final Function errar;
  final Function proxima;
  final Function tentarDeNovo;
  final Function menu;
  final Function selecionar;

  final int numero;
  final bool submetido;
  final bool acertando;

  Questao({
    @required this.questao,
    @required this.acertar,
    @required this.errar,
    @required this.numero,
    @required this.submetido,
    @required this.acertando,
    @required this.proxima,
    @required this.tentarDeNovo,
    @required this.menu,
    @required this.selecionar,
    @required this.selecionadas,
  });

  void explicar(BuildContext ctx, explicacao) {
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
        child: CartaoApresentador(explicacao),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          questao['pergunta'],
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      if (questao['tem imagem'])
                        Image.asset(
                          questao['path imagem'],
                          //width: 50,
                          cacheWidth:
                              (MediaQuery.of(context).size.width * 0.8).toInt(),
                        ),
                    ],
                  ),
                ),
                if (submetido)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (acertando)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Center(child: const Text('Correto!')),
                        ),
                      if (!acertando)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Center(child: const Text('Errado!')),
                        ),
                      if (questao['tem explicacao'])
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: GestureDetector(
                            onTap: () =>
                                explicar(context, questao['explicacao']),
                            child: Image.asset(
                              'assets/images/botoes/QuimiquITA_info2.png',
                              scale: 1.4,
                            ),
                          ),
                        ),
                    ],
                  ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                if (submetido)
                  if (acertando)
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: proxima,
                        child: Text(
                          'Próxima questão!',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                if (submetido)
                  if (!acertando)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6.0,
                        vertical: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5 - 16,
                            //decoration: BoxDecoration(color: Colors.pink),
                            child: GestureDetector(
                              onTap: menu,
                              child: Text(
                                'Voltar ao Menu',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5 - 16,
                            //decoration: BoxDecoration(color: Colors.tealAccent),
                            child: GestureDetector(
                              onTap: tentarDeNovo,
                              child: Text(
                                'Tentar de novo',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                Row(
                  children: [
                    BotaoResposta(
                      acertar: acertar,
                      errar: errar,
                      index: 0,
                      questao: questao,
                      acertando: acertando,
                      submetido: submetido,
                      selecionar: selecionar,
                      selecionadas: selecionadas,
                    ),
                    BotaoResposta(
                      acertar: acertar,
                      errar: errar,
                      index: 1,
                      questao: questao,
                      acertando: acertando,
                      submetido: submetido,
                      selecionadas: selecionadas,
                      selecionar: selecionar,
                    ),
                  ],
                ),
                Row(
                  children: [
                    BotaoResposta(
                      acertar: acertar,
                      errar: errar,
                      index: 2,
                      questao: questao,
                      acertando: acertando,
                      submetido: submetido,
                      selecionadas: selecionadas,
                      selecionar: selecionar,
                    ),
                    BotaoResposta(
                      acertar: acertar,
                      errar: errar,
                      index: 3,
                      questao: questao,
                      acertando: acertando,
                      submetido: submetido,
                      selecionadas: selecionadas,
                      selecionar: selecionar,
                    ),
                  ],
                ),
                SizedBox(height: 15)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
