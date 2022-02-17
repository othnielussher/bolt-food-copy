import 'package:bolt_food/exports.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bolt Food Clone',
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: Fonts.euclidCircularB,
        primaryColor: Palette.primary,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
