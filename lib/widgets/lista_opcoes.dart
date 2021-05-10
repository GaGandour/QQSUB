import 'package:flutter/material.dart';
import '../models/conteudo_geral.dart';
import './opcao_materia.dart';

class ListaDeOpcoes extends StatelessWidget {
  final Function irQuiz;
  final AppBar appBar;
  final Function embaralhar;

  ListaDeOpcoes(
    this.irQuiz,
    this.appBar,
    this.embaralhar,
  );
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: conteudo
            .map((materia) => OpcaoDeMateria(materia, irQuiz, embaralhar))
            .toList(),
      ),
    );
  }
}
