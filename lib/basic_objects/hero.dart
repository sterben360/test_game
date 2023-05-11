import 'package:game/items/flask.dart';
import 'item.dart';

class Hero {
  late int _level;
  late String _name;
  final int _maxHP = 100;
  late int _currentHP;
  late int _damage;
  List<Item> inventory = [];

  Hero(String name) {
    _level = 1;
    _name = name;
    _currentHP = _maxHP;
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
    return _currentHP;
  }

  void changeHP(int points) {
    if (_currentHP + points > 0) {
      if (_currentHP + points > _maxHP) {
        _currentHP = _maxHP;
      } else {
        _currentHP += points;
      }
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
