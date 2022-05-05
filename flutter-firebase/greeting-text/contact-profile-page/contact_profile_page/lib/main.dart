import 'package:flutter/material.dart';

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            leading: Icon(Icons.arrow_back, color: Colors.black),
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    print("Contact is starred");
                  },
                  icon: Icon(Icons.star, color: Colors.black))
            ],
          ),
          body: ListView(
            children: <Widget>[
              Column(children: <Widget>[
                Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                        "https://avatars.githubusercontent.com/u/35345818?v=4",
                        fit: BoxFit.cover)),
                Container(
                    height: 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("bdushimi",
                                  style: TextStyle(fontSize: 30)))
                        ])),
                Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          buildCallButtom(),
                          buildTextButton(),
                          
                        ])),
              ])
            ],
          )),
    );
  }
}

Widget buildCallButtom() {
  return Column(children: <Widget>[
    IconButton(
      icon: Icon(Icons.call, color: Colors.indigo.shade800),
      onPressed: () {
        print("Call button is pressed");
      },
    ),
    Text("Call"),
  ]);
}

Widget buildTextButton() {
  return Column(children: <Widget>[
    IconButton(
      icon: Icon(Icons.message, color: Colors.indigo.shade800),
      onPressed: () {
        print("Text button is pressed");
      },
    ),
    Text("Text")
  ]);
}

void main() => runApp(ContactProfilePage());
