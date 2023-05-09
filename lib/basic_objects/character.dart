import 'package:game/items/flask.dart';
import 'item.dart';

class Character {
  late int _level;
  late String _name;
  late int _hp;
  late int _damage;
  List<Item> inventory = [];

  Character(String name) {
    _level = 1;
    _name = name;
    _hp = 100;
    inventory = [Flask(this), Flask(this), Flask(this)];
  }

  String get getName {
    return _name;
  }

  set levelUp(int lvl) {
    _level += lvl;
  }

  int get getLevel {
    return _level;
  }

  int get getHP {
    return _hp;
  }

  void changeHP(int points) {
    if (_hp + points > 0) {
      _hp += points;
    } else {
      // death
    }
  }

  List<String> get getInventory {
    List<String> itemsInInventory = [];
    for (var element in inventory) {
      itemsInInventory.add(element.getName);
    }
    return itemsInInventory;
  }

  void removeItemFromInventory(Item item) {
    Item itemToRemove = inventory.firstWhere((element) => element.getName == item.getName);
    inventory.remove(itemToRemove);
  }
}
