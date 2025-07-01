import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:trilhaapp/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numeroGerado = 0; // campo para armazenar o valor gerado
  int quantidadeCliques = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu aplicativo",
          // style: GoogleFonts.pacifico(),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.deepPurpleAccent,
              child: Text(
                "Acoes do usuario",
                style: GoogleFonts.acme(fontSize: 22),
              ),
            ),

            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.lightGreenAccent,
                child: Text(
                  "Foi clicado $quantidadeCliques vezes",
                  style: GoogleFonts.acme(fontSize: 22),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              color: Colors.yellowAccent,
              child: Text(
                "O numero gerado foi: $numeroGerado",
                style: GoogleFonts.acme(fontSize: 22),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                        child: Text(
                          "Nome: ",
                          style: GoogleFonts.acme(fontSize: 22),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.pinkAccent,
                        child: Text(
                          "Rhuan Kowic Santos",
                          style: GoogleFonts.acme(fontSize: 22),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.lightBlueAccent,
                        child: Text(
                          "Idade: 21",
                          style: GoogleFonts.acme(fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            quantidadeCliques += 1;
            numeroGerado = GeradorNumeroAleatorioService.gerarNumeroAleatorio(
              100,
            );
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
