import 'package:flutter/material.dart';

import '../models/materia.dart';

class Gabaritado extends StatefulWidget {
  final Materia materia;
  final Function voltarMenu;
  final int pontuacao;
  Gabaritado(this.materia, this.voltarMenu, this.pontuacao);

  @override
  _GabaritadoState createState() => _GabaritadoState();
}

class _GabaritadoState extends State<Gabaritado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
              'Parabéns! Você acabou de responder às ${widget.materia.listaQuestoes.length} questões da categoria ${widget.materia.titulo}!',
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Pontuação: ${widget.pontuacao}/${widget.materia.listaQuestoes.length}.',
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
