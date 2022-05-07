import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Container App',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Container App'),
            ),
            body: Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(left:50),
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.rectangle,
                borderRadius:BorderRadius.all(
                  Radius.circular(30)
                ),
              ),
            )));
  }
}
