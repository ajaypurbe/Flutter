import 'package:flutter/material.dart';
import 'package:passing_data/screen/statefull.dart';
import 'package:passing_data/screen/stateless.dart';

class Interface extends StatefulWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  _InterfaceState createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  final _formkey = GlobalKey<FormState>();
  // String? name;
  Person? person = Person();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Data',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Parsing Data interface'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
                key: _formkey,
                child: Center(
                  child: Column(
                    children: [
                      TextFormField(
                        onSaved: (newValue) => person!.name = newValue,
                        decoration:
                            const InputDecoration(labelText: 'Enter your name'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onSaved: (newValue) => person!.contact = newValue,
                        decoration: const InputDecoration(
                            labelText: 'Enter your contact'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onSaved: (newValue) => person!.age = newValue,
                        decoration:
                            const InputDecoration(labelText: 'Enter your age'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onSaved: (newValue) => person!.location = newValue,
                        decoration: const InputDecoration(
                            labelText: 'Enter your location'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              _formkey.currentState!.save();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StatelessInterface(
                                            person: person,
                                          )));
                            }
                          },
                          child: const Text('stateless')),
                      ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              _formkey.currentState!.save();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StateFullInterface(
                                            person: person,
                                          )));
                            }
                          },
                          child: const Text('statefull'))
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

class Person {
  String? name;
  String? contact;
  String? age;
  String? location;
  Person({this.name, this.age, this.contact, this.location});
}
