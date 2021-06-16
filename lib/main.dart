import 'package:avaliacao_pdm/telas/tela_animais.dart';
import 'package:avaliacao_pdm/telas/tela_classes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => TelaClasses(),
        '/animais': (context) => TelaAnimais(),
      },
    );
  }



}