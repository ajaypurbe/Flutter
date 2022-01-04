import 'package:flutter/material.dart';
import 'package:list_demo/screen/basic.dart';
import 'package:list_demo/screen/longlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Longlist(
        products: List.generate(100, (index) => 'products $index'),
      ),
    );
  }
}
