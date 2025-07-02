import 'package:flutter/material.dart';

class DadosCadastraisPage extends StatelessWidget {
  final String texto;
  const DadosCadastraisPage({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          texto,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Center(child: Text("Dados cadastrais")),
    );
  }
}
