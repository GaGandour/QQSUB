import 'package:flutter/foundation.dart';

class Pergunta {
  String pergunta;
  bool temImagem;
  String pathImagem;
  bool temExplicacao;
  String explicacao;
  List<String> respostas;
  int correto;

  Pergunta({
    @required this.pergunta,
    @required this.temExplicacao,
    @required this.temImagem,
    this.explicacao,
    this.pathImagem,
    @required this.correto,
    @required this.respostas,
  });
}
