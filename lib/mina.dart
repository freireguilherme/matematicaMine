import 'package:flame/flame.dart';
import 'package:flame/game.dart';

class Mina extends FlameGame {
  @override
  Future<void> onLoad() async {
    await Flame.images.load('mina-sprites.png');
  }
}
