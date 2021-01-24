import 'package:flutter/material.dart';
import 'package:radio_app/constant/route_path.dart';
import 'package:radio_app/screen/home/home_screen.dart';
import 'package:radio_app/screen/player/player_screen.dart';
import 'package:radio_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const _MyApp();
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio App',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      initialRoute: RoutePath.home,
      routes: {
        RoutePath.home: (_) => const HomeScreen(),
        RoutePath.player: (_) => const PlayerScreen(),
      },
    );
  }
}
