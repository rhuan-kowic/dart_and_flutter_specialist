import 'dart:io';
/*
🟢 1. Calculadora simples

Peça dois números ao usuário e mostre:
    A soma
    A multiplicação
    A divisão
    O resto da divisão
Use interpolação de string para mostrar os resultados de forma clara.
 */

void main(List<String> args) {
  print("Digite o primeiro numero: ");
  String? primeiroInput = stdin.readLineSync();
  print("Digite o segundo numero: ");
  String? segundoInput = stdin.readLineSync();
  int? primeiroNumero = int.tryParse(primeiroInput ?? "") ?? 0;
  int? segundoNumero = int.tryParse(segundoInput ?? "") ?? 0;

  int soma = primeiroNumero + segundoNumero;
  int multiplicacao = primeiroNumero * segundoNumero;
  double divisao = primeiroNumero / segundoNumero;
  int resto = primeiroNumero % segundoNumero;

  print("Soma: $soma");
  print("Multiplicação: $multiplicacao");
  print("Divisão: $divisao");
  print("Resto: $resto");
}
