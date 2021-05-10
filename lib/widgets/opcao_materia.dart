import 'package:flutter/material.dart';
import '../models/materia.dart';

class OpcaoDeMateria extends StatelessWidget {
  final Materia materia;
  final Function iniciar;
  final Function embaralhar;

  OpcaoDeMateria(
    this.materia,
    this.iniciar,
    this.embaralhar,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin, border, padding
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 4),
      decoration: BoxDecoration(
        color: Color.fromRGBO(251, 255, 0, 1),
        border: Border.all(
          color: Color.fromRGBO(159, 91, 0, 1),
          width: 4,
        ),
      ),
      padding: EdgeInsets.all(0),
      width: double.infinity,

      child: Card(
        elevation: 0,
        shape: ContinuousRectangleBorder(),
        color: Color.fromRGBO(251, 255, 0, 0),
        child: ListTile(
          onTap: () {
            embaralhar(materia);
            iniciar(materia.titulo);
          },
          title: Text(
            materia.titulo,
            style: Theme.of(context).textTheme.headline6,
          ),
          subtitle: Text(
            '${materia.listaQuestoes.length} questões',
            style: Theme.of(context).textTheme.headline5,
          ),
          leading: Image.asset(materia.imagem),
        ),
      ),
    );
  }
}
