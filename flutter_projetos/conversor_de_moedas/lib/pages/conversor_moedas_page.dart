import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConversorMoedasPage extends StatefulWidget {
  const ConversorMoedasPage({super.key});

  @override
  State<ConversorMoedasPage> createState() => _ConversorMoedasPageState();
}

class _ConversorMoedasPageState extends State<ConversorMoedasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Conversor de moedas",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: 50,
              color: const Color.fromARGB(255, 197, 195, 195),
              child: Row(children: [SizedBox(width: 20), Text("1000.00")]),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: 50,
              color: const Color.fromARGB(255, 197, 195, 195),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.euro, size: 30, color: Colors.green),
                  SizedBox(width: 30),
                  Text("Euro(EUR)"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Icon(Icons.currency_exchange, size: 70),
            SizedBox(height: 20),
            Container(
              color: const Color.fromARGB(255, 197, 195, 195),
              height: 50,
              alignment: Alignment.center,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.attach_money, color: Colors.green, size: 35),
                  SizedBox(width: 40),
                  Text("Dolar(USD)"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                "EUR 1000 = 1180,35 USD",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
