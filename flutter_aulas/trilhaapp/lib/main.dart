// Para rodar o projeto flutter precisa da funcao main
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numero = 0; // campo para armazenar o valor gerado

  void _gerarNumeroAleatorio() {
    setState(() {
      _numero = Random().nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meu aplicativo")),
      body: Center(child: Text(_numero.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: _gerarNumeroAleatorio,
        child: Icon(Icons.add),
      ),
    );
  }
}
