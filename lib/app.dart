import 'package:bolt_food/shared/exports.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bolt Food by Magnus',
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: Fonts.euclidCircularB,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
