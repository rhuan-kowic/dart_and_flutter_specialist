/**
 * 🟢 4. Pontuação de jogador

Simule a pontuação de um jogador de jogo de celular:
    A cada fase, a pontuação aumenta
    No final, mostre a pontuação total e se ele bateu o recorde ou não (use operadores de comparação)
 */

void main(List<String> args) {
  int recorde = 300;
  List<int> fases = [60, 100, 150];
  int pontuacao = 0;
  for (int fase in fases) pontuacao += fase;
  bool bateuRecorde = pontuacao > recorde;
  print("Pontuação total: $pontuacao");
  if (bateuRecorde) {
    print("Bateu o recorde");
  } else {
    print("não bateu o recorde");
  }
}
