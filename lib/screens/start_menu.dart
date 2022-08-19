import 'package:flutter/material.dart';
import 'package:mathmine/screens/game_play.dart';

class StartMenu extends StatelessWidget {
  const StartMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Text(
                'MathMiner',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontFamily: 'Kurland', fontSize: 50.0),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const GamePlay(),
                    ),
                  );
                },
                child: Text(
                  'Play',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontFamily: 'Kurland', fontSize: 25.0),
                )),
            ElevatedButton(
                onPressed: () {
                  // TODO navigate para Almanaque
                },
                child: const Text('Almanaque')),
            ElevatedButton(
                onPressed: () {
                  // TODO navigate para Loja
                },
                child: const Text('Loja')),
          ],
        ),
      ),
    );
  }
}
