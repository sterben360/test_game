import 'package:game/basic_objects/item.dart';
import '../basic_objects/character.dart';

class Flask extends Item{
  final int _addHP = 50;
  final String _name = "Хилка +50хп";
  late Character character;

  Flask (Character char) {
    character = char;
  }

  int get getPoints {
    return _addHP;
  }

  @override
  String get getName {
    return _name;
  }

  @override
  void use() {
    character.changeHP(_addHP);
  }
}