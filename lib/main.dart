import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:mathmine/mina.dart';

void main() {
  imageCache.clear();
  final game = Mina();
  runApp(GameWidget(game: game));
}
