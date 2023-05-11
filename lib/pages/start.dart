import 'package:game/pages/creating.dart';
import 'package:interact/interact.dart';

class Start {
  static List<String> mainMenu = ["Создать персонажа", "Выбор персонажа", "Выход"];

  final selection = Select(
    prompt: 'Хелло!',
    options: mainMenu,
  ).interact();

  nextPage () {
    switch (selection) {
      case 0:
        return Creating().getNewCharacter();
      case 1:
        // move to choosing a character
        break;
      case 3:
        // exit the game
        break;
    }
  }
}