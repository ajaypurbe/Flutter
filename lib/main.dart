import 'package:flutter/material.dart';
import 'package:ui_basics/app/sig_in/sigin_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker by Ajay',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SigInPage(
        
      ),
    );
  }
}
