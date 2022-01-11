import 'package:floor/floor.dart';
import 'package:flutter/material.dart';
import 'package:sqlite_demo/screen/Mainscreen.dart';
import 'package:sqlite_demo/screen/inser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      routes: {InserState.routeName: (context) => InserState()},
    );
  }
}
