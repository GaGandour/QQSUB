import 'package:flutter/material.dart';
import '../models/materia.dart';

class Gabaritado extends StatelessWidget {
  final Materia materia;
  final Function voltarMenu;
  Gabaritado(this.materia, this.voltarMenu);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Parabéns! Você acabou de gabaritar as ${materia.listaQuestoes.length} questões da categoria ${materia.titulo}!',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20.0,
              ),
              child: TextButton(
                onPressed: voltarMenu,
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
