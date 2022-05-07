import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme(
          primary: Color(0xff3700B3),
          secondary: Color(0xff03DAC6),
          background: Color(0xffFFFFFF),
          brightness: Brightness.light,
          error: Color(0xffB00020),
          onBackground: Color(0xff000000),
          onError: Color(0xffFFFFFF),
          onPrimary: Color(0xffFFFFFF),
          onSurface: Color(0xffFFFFFF),
          onSecondary: Color(0xff000000),
          surface: Color(0xff000000),
        ),
      ),
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_comment)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_alarm)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_location)),
        ],
      ),
    );
  }
}
