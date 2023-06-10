import "dart:io";
import "dart:math";

void main() {
  String? name;
  print("Olá. Seja Bemvindo ao Floana Bet");
  print("============ FLOANA BET =============");
  print("Informe seu nome para começar: ");
  name = stdin.readLineSync();
  print("--------------------------------");
  print("-------- Obrigado $name --------");
  print("--------------------------------");

  // get random number
  Random random = new Random();
  int selectedNumber = random.nextInt(100);

  bool win = false;
  int wins = 0;
  bool left_game = false;
  int tries = 0;
  int errors = 0;
  List tried_numbers = [];

  print("Vamor começar o jogo: ");
  while (!left_game) {
    print(" ");
    print("««««««««««««««««««««»»»«««««««««««");
    print("««««««««««««««««««««»»»«««««««««««");
    print("««««««««««««««««««««»»»«««««««««««");
    print("««««««««««««««««««««»»»«««««««««««");
    if (tries == 0) {
      print("Bem-vindo a nova jogada! ");
    } else {
      print("Numéro tentados: $tried_numbers");
    }

    print("Digite sair para terminar o jogo");
    print("Adivinhe o número: ");

    String? answer = stdin.readLineSync();

    if (answer == "sair") {
      left_game = true;
    } else {
      dynamic intValue = null;

      if (answer != null) {
        intValue = int.parse(answer);
      }

      if (intValue != null) {
        if (intValue == selectedNumber) {
          wins++;
          win = true;
          print(" ");
          print(
              "❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️");
          print("O numéro $intValue está correcto");
          print("Parabéns $name. Vc ganhou. Número de tentativas: $tries.  ");
          print("Numéro de vitórias: $wins");
          print("😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎");
          print("😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎");
          print("😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎");
          print("😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎");
          print(
              "❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️");

          tries = 0;
          tried_numbers.clear();

          // generate other number
          selectedNumber = random.nextInt(100);
        } else {
          tries++;
          errors++;

          tried_numbers.add(intValue);

          if (intValue < selectedNumber) {
            print("Errado. O número é mais para cima");
          } else {
            print("Errado. O número é mais para baixo");
          }

          print("Numéro de tentativas: $tries");
        }
      } else {
        print("Resposta Inválida.");
      }
    }
  }

  print("««««««««««««««« Jogo Encerrado »»»»»»»»»»»»");
}
