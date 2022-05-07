import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Build Layouts with Flutter"),
        ),
        body: const Center(
          child: Text(
            "Hello Flutter Layouts",
            style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("You rang!");
          },
          child: const Icon(Icons.lightbulb_outlined),
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            onPressed: () {}, 
          icon: const Icon(Icons.add_comment)
          ),
          IconButton(
            onPressed: () {}, 
          icon: const Icon(Icons.add_alarm)
          ),
          IconButton(
            onPressed: () {}, 
          icon: const Icon(Icons.add_location)
          ),
        ],
      ),
    );
  }
}
