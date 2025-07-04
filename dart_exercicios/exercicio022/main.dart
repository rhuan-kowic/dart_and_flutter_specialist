/**
 * 🧪 Exercício 6: Contador de caracteres
Crie uma função que receba uma String como parâmetro e retorne a quantidade de caracteres.
 */

void main(List<String> args) {
  String texto = '21st century';
  print(contadorDeCaracteres(texto));
}

int contadorDeCaracteres(String texto) {
  return texto.length;
}
