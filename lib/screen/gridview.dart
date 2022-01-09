import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(
              100,
              (index) => Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ))),
    );
  }
}
