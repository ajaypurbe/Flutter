import 'package:flutter/material.dart';

class Longlist extends StatefulWidget {
  final List<String>? products;
  const Longlist({Key? key, this.products}) : super(key: key);

  @override
  _LonglistState createState() => _LonglistState();
}

class _LonglistState extends State<Longlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: ListView.separated(
        itemCount: widget.products!.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(
              Icons.people,
              color: Colors.blue,
            ),
            title: Text(
              '${widget.products![index]}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    widget.products!.removeAt(index);
                  });
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          color: Colors.amber,
        ),
      ),
    );
  }
}
