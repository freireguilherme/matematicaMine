import 'package:flame/flame.dart';
import 'package:flame/game.dart';

class Mina extends FlameGame {
  @override
  Future<void> onLoad() async {
    await Flame.images.load('bg_level_C.png');
  }
}
