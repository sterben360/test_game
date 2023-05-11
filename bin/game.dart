import 'package:game/basic_objects/hero.dart';
import 'package:game/basic_objects/item.dart';
import 'package:game/pages/start.dart';
import 'package:interact/interact.dart';

void main(List<String> arguments) async {
  var character = Start().nextPage();
  print(character.getName);
  print(character.getHP);
  var inv = character.getInventory;
  final selection = Select(
    prompt: 'Your favorite programming language',
    options: inv,
  ).interact();
  String itemName = inv[selection];
  print('You use $itemName!!!');
  
  Item item = character.inventory.firstWhere((element) => element.getName == itemName);
  item.use();
  print(character.getHP);
  character.removeItemFromInventory(item);
  print("Inventory --> ${character.getInventory}");
}

