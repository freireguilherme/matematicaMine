import 'dart:ui';

import 'package:flame/game.dart';

import 'components/world.dart';
import 'components/player.dart';
import 'components/world_collidable.dart';
import 'helpers/map_loader.dart';

class Mina extends FlameGame with HasCollisionDetection {
  final World _world = World();
  final Player _player = Player();

  @override
  Future<void> onLoad() async {
    await add(_world);
    add(_player);
    addWorldCollision();

    _player.position = _world.size / 2;
    // TODO: camera fica parada
    camera.followComponent(_player,
        worldBounds: Rect.fromLTRB(
            0, 0, _world.size.x, _world.size.y)); // camera segue o player
  }

  void addWorldCollision() async =>
      (await MapLoader.readRayWorldCollisionMap()).forEach((rect) {
        add(WorldCollidable()
          ..position = Vector2(rect.left, rect.top)
          ..width = rect.width
          ..height = rect.height);
      });
}
