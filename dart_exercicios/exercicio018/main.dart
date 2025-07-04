/**🧪 Exercício 2: Soma de dois números

Crie uma função que receba dois números inteiros como parâmetros e retorne a soma deles.
 */

void main(List<String> args) {
  soma(30, 50);
}

int soma(int primeiroNumero, int segundoNumero) {
  int resultado = primeiroNumero + segundoNumero;
  print("A soma dos numero: $primeiroNumero + $segundoNumero = $resultado");
  return resultado;
}
