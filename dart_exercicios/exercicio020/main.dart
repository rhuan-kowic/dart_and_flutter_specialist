/**
 * 🧪 Exercício 4: Calcular média de uma lista
Crie uma função que receba uma lista de notas e retorne a média.
 */

void main(List<String> args) {
  List<double> listaDeNotas = [10, 5, 6, 7.7, 9.8, 8.6];
  print("A media e: ${mediaDaLista(listaDeNotas)}");
}

double mediaDaLista(List<double> lista) {
  double notaTotal = 0;
  lista.forEach((nota) => notaTotal += nota);
  return (notaTotal / lista.length).roundToDouble();
}
