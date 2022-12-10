import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: DRoutes(),
    ));

class DRoutes extends StatefulWidget {
  @override
  State<DRoutes> createState() => _DRoutesState();
}

class _DRoutesState extends State<DRoutes> {
  late bool currst = false;
  late String current;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Test'),
          centerTitle: true,
          backgroundColor: Colors.red[600]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
    );
  }
}
