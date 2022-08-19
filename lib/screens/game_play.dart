import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../mina.dart';

Mina _mina = Mina();

class GamePlay extends StatelessWidget {
  const GamePlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: _mina);
  }
}
