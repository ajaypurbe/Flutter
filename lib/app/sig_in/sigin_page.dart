import 'package:flutter/material.dart';

class SigInPage extends StatelessWidget {
  const SigInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Tracker"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.amber.shade500,
              child: const SizedBox(
                height: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromARGB(255, 17, 193, 46),
              child: const SizedBox(
                height: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromRGBO(36, 7, 255, 1),
              child: const SizedBox(
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
