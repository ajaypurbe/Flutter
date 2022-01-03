import 'package:flutter/material.dart';
import 'package:passing_data/screen/interface.dart';

class StateFullInterface extends StatefulWidget {
  Person? person = Person();
  StateFullInterface({Key? key, this.person}) : super(key: key);

  @override
  _StateFullInterfaceState createState() => _StateFullInterfaceState();
}

class _StateFullInterfaceState extends State<StateFullInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statefull Interface'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${widget.person!.name}',
            ),
            Text(
              '${widget.person!.age}',
            ),
            Text(
              '${widget.person!.contact}',
            ),
            Text(
          '${widget.person!.location}',
        ),
          ],
        ),
      ),
    );
  }
}
