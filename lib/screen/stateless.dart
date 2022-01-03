import 'package:flutter/material.dart';
import 'package:passing_data/screen/interface.dart';

class StatelessInterface extends StatelessWidget {
  Person? person;
  StatelessInterface({Key? key, this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Interface'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${person!.name}',
            ),
            Text(
              '${person!.age}',
            ),
            Text(
              '${person!.contact}',
            ),
            Text(
              '${person!.location}',
            ),
          ],
        ),
      ),
    );
  }
}
