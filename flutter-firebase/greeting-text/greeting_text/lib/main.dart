import 'package:flutter/material.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatefulWidget {
  @override
  _HelloFlutterAppState createState() => _HelloFlutterAppState();
}

String englishGreeting = "Hello Flutter !";
String kinyarwandaGreeting = "Muraho Flutter !";

FontWeight fontWeightBold = FontWeight.bold;
FontWeight fontWeightNormal = FontWeight.normal;

class _HelloFlutterAppState extends State<HelloFlutterApp> {
  String displayText = englishGreeting;
  FontWeight textFontWeight = fontWeightNormal;

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

                        textFontWeight = textFontWeight == fontWeightNormal
                            ? fontWeightBold
                            : fontWeightNormal;
                      });
                    },
                    icon: Icon(Icons.refresh))
              ],
            ),
            body: Center(
                child: Text(displayText,
                    style:
                        TextStyle(fontSize: 24, fontWeight: textFontWeight)))));
  }
}
