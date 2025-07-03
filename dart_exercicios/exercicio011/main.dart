/**
 * 🧪 Exercício 3: Remoção e verificação
Crie uma lista com 4 nomes de frutas. Em seguida:
    Remova a fruta "banana"
    Verifique se a fruta "uva" está presente
    Imprima a lista e o resultado da verificação
 */

void main(List<String> args) {
  List<String> listaDeFrutas = ["uva", "banana", "pera", "laranja"];
  listaDeFrutas.remove("banana");
  String temUva = listaDeFrutas.contains("uva")
      ? "A lista contem uva."
      : "A lista nao contem uva.";
  print(listaDeFrutas);
  print(temUva);
}
