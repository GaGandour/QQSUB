import 'package:flutter/material.dart';
import './models/materia.dart';
import './models/conteudo_geral.dart';
import './pages/quiz.dart';
import './pages/menu.dart';
import './pages/home.dart';

class Gerenciador extends StatefulWidget {
  @override
  _GerenciadorState createState() => _GerenciadorState();
}

class _GerenciadorState extends State<Gerenciador> {
  var pagina = 'Start';

  var ordem = [];

  void _embaralhar(Materia materia) {
    ordem = [];

    for (int i = 0; i < materia.listaQuestoes.length; i++) {
      ordem.add(i);
    }

    ordem.shuffle(); // Para desabilitar o embaralhamento
    //, basta comentar essa linha!
    //print(ordem);
  }

  void _irParaOMenu() {
    setState(() {
      pagina = 'Menu';
    });
  }

  void _irParaOInicio() {
    setState(() {
      pagina = 'Start';
    });
  }

  void _fazerQuiz(String titulo) {
    setState(() {
      pagina = titulo;
    });
  }

  Decoration _degrade = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromRGBO(93, 248, 170, 1),
        Color.fromRGBO(141, 20, 255, 1),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 1],
    ),
  );

  @override
  Widget build(BuildContext context) {
    if (pagina == 'Start') {
      return HomePage(_irParaOMenu, _degrade);
    } else if (pagina == 'Menu') {
      return MenuDeMaterias(
        retornar: _irParaOInicio,
        irQuiz: _fazerQuiz,
        degrade: _degrade,
        embaralhar: _embaralhar,
      );
    } else {
      for (var materia in conteudo) {
        if (materia.titulo == pagina)
          return Quiz(
            materia: materia,
            voltarAoMenu: _irParaOMenu,
            degrade: _degrade,
            ordem: ordem,
            embaralhar: _embaralhar,
            resetar: _fazerQuiz,
          );
      }
      return Text('error');
    }
  }
}
