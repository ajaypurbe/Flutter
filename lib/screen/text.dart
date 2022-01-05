import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key?: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Example')),
      body: Center(
        child: RichText(text: const TextSpan(
          children: [
            TextSpan(text: "This is test", style: TextStyle(fontSize: 20)),
            TextSpan(text: "  Account", style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            ),
            ),
            TextSpan(text: "SignUp", style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            ),
            ),
          ]
        ),
        ),
      ),
    );
  }
}
