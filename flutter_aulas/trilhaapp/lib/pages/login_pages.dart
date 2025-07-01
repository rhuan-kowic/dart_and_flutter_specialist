import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 218, 218),

        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 150),
              const Icon(Icons.person, size: 125, color: Colors.blueAccent),
              const SizedBox(height: 100),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 50,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu email: ")),
                    Expanded(flex: 3, child: Text("Email")),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                height: 50,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe a senha: ")),
                    Expanded(flex: 3, child: Text("Senha")),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(child: Container()),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                color: Colors.green,
                height: 50,
                child: Text("Login", style: GoogleFonts.aBeeZee(fontSize: 15)),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: Text(
                  "Cadastro",
                  style: GoogleFonts.aBeeZee(fontSize: 15),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
