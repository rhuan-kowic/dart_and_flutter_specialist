/**
 * 🧪 Exercício 5: Calculando média
Crie uma lista com 5 notas de provas. Em seguida:
    Some todas as notas
    Calcule a média
    Imprima a média final
 */

void main(List<String> args) {
  List<double> notasDoAluno = [6, 8, 7.7, 7, 9.8, 8];
  double totalDeNotas = 0;
  notasDoAluno.forEach((e) => totalDeNotas += e);
  var media = (totalDeNotas / notasDoAluno.length).round();

  print("Media: $media");
}
