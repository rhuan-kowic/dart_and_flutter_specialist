/**
 * Crie uma lista que contenha diferentes tipos de dados: 
 * um número, uma string e um valor booleano. Depois, imprima os valores 
 * e descreva o tipo de cada item.
 */

void main(List<String> args) {
  List<dynamic> lista = [34, "Ronaldo", true];
  lista.forEach((element) => print("$element e do tipo: ${element.runtimeType}"));
}
