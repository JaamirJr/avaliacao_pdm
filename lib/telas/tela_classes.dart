import 'package:avaliacao_pdm/componentes/item_classe.dart';
import 'package:avaliacao_pdm/mockdata/classes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaClasses extends StatefulWidget {
  @override
  _TelaClassesState createState() => _TelaClassesState();
}

class _TelaClassesState extends State<TelaClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Classes',
            style: GoogleFonts.archivo(fontSize: 36),
          )),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: const DecorationImage(
              image: NetworkImage(
                  'https://awionline.org/sites/default/files/uploads/images/18-AWI-Logo-Hexagons-Green-Border_300x300.png'),
            ),
          ),
        ),
        Container(
          child: GridView(
            padding: EdgeInsets.all(8),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 8,
              mainAxisExtent: 50,
              crossAxisSpacing: 8,
            ),
            children: CLASSES_MOCK.map((e) {
              return ItemClasse(e);
            }).toList(),
          ),
        ),
      ]),
    );
  }
}
