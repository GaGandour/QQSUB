import 'package:flutter/material.dart';

class CartaoApresentador extends StatelessWidget {
  final String texto;
  CartaoApresentador(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3
        ),
      ),
      child: Card(
        shape: ContinuousRectangleBorder(),
        color: Color.fromRGBO(255, 142, 10, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: Navigator.of(context).pop,
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      texto,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
