import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/materia.dart';

class Gabaritado extends StatefulWidget {
  final Materia materia;
  final Function voltarMenu;
  final int pontuacao;
  final double notaMinima;
  Gabaritado(this.materia, this.voltarMenu, this.pontuacao, this.notaMinima);

  @override
  _GabaritadoState createState() => _GabaritadoState();
}

class _GabaritadoState extends State<Gabaritado> {
  String get _textoFinal {
    var nota = widget.pontuacao / widget.materia.listaQuestoes.length;
    if (nota == 1)
      return "Parabéns! Você acertou de primeira todas as ${widget.materia.listaQuestoes.length} questões da categoria ${widget.materia.titulo}!";
    else if (nota > 0.85)
      return "Muito bom! Você quase gabaritou!\nQuem sabe na próxima?";
    else if (nota > 0.70)
      return "Sua nota foi razoável, mas dá para melhorar, hein?";
    else
      return "Hmmm... Acho que precisamos estudar mais este assunto!";
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
              _textoFinal,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
            ),
            if (widget.pontuacao / widget.materia.listaQuestoes.length <
                widget.notaMinima)
              Text(
                "Dica: Se você acertar mais do que ${NumberFormat("##.#%", "pt-BR").format(widget.notaMinima)} das questões, essa propaganda irritante de agora há pouco não aparecerá!",
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.left,
              ),
            if (widget.pontuacao / widget.materia.listaQuestoes.length <
                widget.notaMinima)
              SizedBox(
                height: 10,
              ),
            Text(
              'Pontuação: ${widget.pontuacao}/${widget.materia.listaQuestoes.length}. (${NumberFormat("##.#%", "pt-BR").format(widget.pontuacao / widget.materia.listaQuestoes.length)})',
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
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
          ],
        ),
      ),
    );
  }
}
