import 'dart:math';

class GeradorNumeroAleatorioService {
  static int gerarNumeroAleatorio(int numberMaximo) {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(numberMaximo);
  }
}
