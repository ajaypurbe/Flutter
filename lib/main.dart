import 'package:flutter/material.dart';
import 'package:text_example/screen/text.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Text widget example',
      home: TextExample(),
    );
  }
}