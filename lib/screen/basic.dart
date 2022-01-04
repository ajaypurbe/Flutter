import 'package:flutter/material.dart';

class Basic_Listview extends StatefulWidget {
  const Basic_Listview({Key? key}) : super(key: key);

  @override
  _Basic_ListviewState createState() => _Basic_ListviewState();
}

class _Basic_ListviewState extends State<Basic_Listview> {
  List<String> country = ['nepal', 'india', 'china', 'pakistan'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                debugPrint('you have clicked setting');
              },
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            const Divider(
              thickness: 3,
              color: Colors.amber,
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('phone'),
            ),
            const ListTile(
              leading: Icon(Icons.photo),
              title: Text('photo'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('phone'),
            ),
            const ListTile(
              leading: Icon(Icons.photo),
              title: Text('photo'),
            )
          ],
        ),
      ),
    );
  }
}
