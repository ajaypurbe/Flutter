

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('sqlite'),),
      body: Center(child: Column(children: [
        ElevatedButton(onPressed: (){}, child: const Text('insert')),
        ElevatedButton(onPressed: (){}, child: const Text('view'))
      ],),),
      
      
    );
  }
}