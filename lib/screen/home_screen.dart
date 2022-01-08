// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'product_screen.dart';
import 'package:form_field_validator/form_field_validator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
      ),
      body: Center(
        child: Container(
          child: Form(
            child: Column(
              children: [
                const Text('this is home page'),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductScreen(),
                        ),
                      );
                    },
                    child: const Text(
                        'this botton will take you to product sceen'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
