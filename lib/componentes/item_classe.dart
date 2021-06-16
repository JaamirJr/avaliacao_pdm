import 'package:avaliacao_pdm/models/classes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemClasse extends StatelessWidget {

  final Classe classe;
  const ItemClasse(this.classe);

  void _selecionarClasse(BuildContext context){
    Navigator.of(context).pushNamed(
      '/animais',
      arguments: classe,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.greenAccent,
      onTap: () {
        _selecionarClasse(context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromRGBO(104, 140, 60, 1)
        ),
        child: Center(
          child: Text(
            classe.classe,
            style: GoogleFonts.archivo(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
