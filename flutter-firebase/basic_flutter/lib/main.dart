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
        title: 'Timer App',
        home: Scaffold(
            backgroundColor: Colors.indigo[100],
            appBar: AppBar(
              title: const Text('Timer App'),
            ),
            body: const Home(),
            ));
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: createSquares(5),
      )
    );
  }

     List<Widget> createSquares(int numSquares) {
    int i = 0;
    List colors = [
      Colors.amber,
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.indigo,
      Colors.lightBlue
    ];

    List<Widget> squares = [];

    while (i < numSquares) {
      Container square = Container(
          color: colors[i], width: 60, height: 60, child: Text(i.toString()));
      i++;
      squares.add(square);
    }

    return squares;
  }
}
