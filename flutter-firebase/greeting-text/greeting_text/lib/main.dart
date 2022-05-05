import 'package:flutter/material.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatefulWidget {
  @override
  _HelloFlutterAppState createState() => _HelloFlutterAppState();
}

String englishGreeting = "Hello Flutter !";
String kinyarwandaGreeting = "Muraho Flutter !";

class _HelloFlutterAppState extends State<HelloFlutterApp> {
  String displayText = englishGreeting;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hi dushi!"),
              leading: Icon(Icons.home),
              actions: <Widget>[
                IconButton(
                    onPressed: () {
                      setState(() {
                        displayText = displayText == englishGreeting
                            ? kinyarwandaGreeting
                            : englishGreeting;
                      });
                    },
                    icon: Icon(Icons.refresh))
              ],
            ),
            body: Center(
                child: Text(
                  displayText, 
                  style: TextStyle(fontSize: 24)))));
  }
}
