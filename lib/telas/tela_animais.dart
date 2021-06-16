import 'package:avaliacao_pdm/componentes/item_animal.dart';
import 'package:avaliacao_pdm/mockdata/animais.dart';
import 'package:avaliacao_pdm/models/classes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaAnimais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final classe = ModalRoute.of(context)!.settings.arguments as Classe;
    final animais = ANIMAIS_MOCK
        .where((element) => element.classe.contains(classe.classe))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(classe.classe, style: GoogleFonts.archivo(fontSize: 25),),
      ),
      body: ListView.builder(
        itemCount: animais.length,
        itemBuilder: (context, index) {
          return ItemAnimal(animais[index]);
        },
      ),
    );
  }
}
