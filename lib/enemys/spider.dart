import 'package:game/basic_objects/enemy.dart';
import '../basic_objects/hero.dart';

class Spider extends Enemy {
  final String name = "Павук";
  int _hp = 10;
  final int _damage = -5;
  late Hero hero;

  Spider(this.hero);

  @override
  void hit() {
    print("$name наносит вам урон $_damage");
    hero.changeHP(_damage);
  }
}
