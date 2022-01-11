import 'package:flutter/material.dart';

class InserState extends StatefulWidget {
  static const routeName = '/insert';
  const InserState({Key? key}) : super(key: key);

  @override
  _InserStateState createState() => _InserStateState();
}

class _InserStateState extends State<InserState> {
  String fname = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insert page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'fName'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'lname'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'contact'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'age'),
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Submit'))
            ],
          )),
        ),
      ),
    );
  }
}
