import 'dart:io';
import 'package:game/basic_objects/hero.dart';
import 'package:game/pages/start.dart';

class Creating extends Start {
  Hero getNewCharacter() {
    String name;
    print("Введите имя персонажа:");
    var str = stdin.readLineSync();
    try {
      print("Введите имя персонажа:");
      name = str.toString(); // todo
      return Hero(name);
    } catch (e) {
      print("Хуёвое имя, давай другое");
      return getNewCharacter();
    }
  }
}