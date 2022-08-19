import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:mathmine/screens/start_menu.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'MathMiner',
      home: const StartMenu(),
    );
  }
}
