import 'package:avaliacao_pdm/models/animais.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemAnimal extends StatelessWidget {
  final Animal animal;

  const ItemAnimal(this.animal);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 8,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                color: Color.fromRGBO(104, 140, 60, 0.9)),
            child: ListTile(
              title: Center(
                child: Text(
                  animal.especie,
                  style: GoogleFonts.archivo(color: Colors.white, fontSize: 24),
                ),
              ),
              subtitle: Center(
                child: Text(
                  animal.nomeCientifico,
                  style: GoogleFonts.archivo(
                      color: Colors.white,
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(animal.imagem),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
