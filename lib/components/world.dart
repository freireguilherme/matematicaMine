import 'package:flame/components.dart';

class World extends SpriteComponent with HasGameRef {
  @override
  Future<void>? onLoad() async {
    sprite = await gameRef.loadSprite('bg_level_C.png');
    size = sprite!.originalSize;
    return super.onLoad();
  }
}
