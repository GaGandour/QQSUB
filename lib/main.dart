import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'gerenciador.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuimiquITA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                color: Colors.black,
              ),
              headline5: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              bodyText1: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              bodyText2: TextStyle(
                // Perguntas do quiz
                fontSize: 28,
                color: Colors.black,
              ),
              button: TextStyle(
                // Respostas em botões
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
        ),
      ),
      home: Gerenciador(),
      debugShowCheckedModeBanner: false,
    );
  }
}
