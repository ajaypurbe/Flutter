import 'package:flutter/material.dart';

class SiCalculator extends StatefulWidget {
  const SiCalculator({Key? key}) : super(key: key);

  @override
  _SiCalculatorState createState() => _SiCalculatorState();
}

class _SiCalculatorState extends State<SiCalculator> {
  final _formkey = GlobalKey<FormState>();
  String? principal;
  String? rate;
  String? time;
  int? result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('SI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  TextFormField(
                    onSaved: (newValue) {
                      principal = newValue;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Field is Empty";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Principal',
                      hintText: '0',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    onSaved: (newValue) {
                      time = newValue;
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Time',
                      hintText: 'Time in Year',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    onSaved: (newValue) {
                      rate = newValue;
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Rate',
                      hintText: 'Rate in percentage',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      _formkey.currentState!.save();
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          result = int.parse(principal!) *
                              int.parse(time!) *
                              int.parse(rate!) ~/
                              100;
                        });
                      }
                    },
                    child: const Text('Submit'),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        side: const BorderSide(width: 5, color: Colors.green),
                        minimumSize: const Size(100, 50),
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        elevation: 20,
                        shadowColor: Colors.black,
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      _formkey.currentState!.reset();
                      setState(() {
                        result = 0;
                      });
                    },
                    child: const Text('Clear'),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        side: const BorderSide(width: 5, color: Colors.green),
                        minimumSize: const Size(100, 50),
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        elevation: 20,
                        shadowColor: Colors.black,
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  const SizedBox(height: 20),
                  Text(result.toString()),
                ],
              )),
        ),
      ),
    );
  }
}
