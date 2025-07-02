import 'dart:io';
/**
 * 🟢 2. Verificador de maioridade

Receba a idade do usuário e mostre uma mensagem dizendo se ele é maior ou menor de idade, com base na comparação.
 */

void main(List<String> args) {
  print("Digite sua idade: ");
  String? input = stdin.readLineSync() ?? "";
  if (input != "" && (int.tryParse(input) is int)) {
    int idade = int.tryParse(input) ?? 0;
    if (idade >= 18) {
      print("Maior de idade");
    } else {
      print("Menor de idade");
    }
  } else {
    print("Entrada invalida");
  }
}
