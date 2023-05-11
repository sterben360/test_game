import 'package:game/basic_objects/item.dart';
import '../basic_objects/hero.dart';

class Flask extends Item{
  final int _addHP = 30;
  final String _name = "Хилка +30хп";
  late Hero hero;

  Flask (this.hero);

  int get getPoints {
    return _addHP;
  }

  @override
  String get getName {
    return _name;
  }

  @override
  void use() {
    hero.changeHP(_addHP);
  }
}
