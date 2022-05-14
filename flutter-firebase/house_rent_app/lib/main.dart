import 'package:flutter/material.dart';
import 'package:house_rent_app/screen/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        colorScheme: const ColorScheme(
          primary: Color(0xff811B83),
          secondary: Color(0xffFA5019),
          background: Color(0xffF5F6F6),
          brightness: Brightness.light,
          error: Color(0xffB00020),
          onBackground: Color(0xff000000),
          onError: Color(0xffFFFFFF),
          onPrimary: Color(0xffFFFFFF),
          onSurface: Color(0xffFFFFFF),
          onSecondary: Color(0xff000000),
          surface: Color(0xff000000),
        ),
        textTheme: TextTheme(
          headline1: const TextStyle(color: Color(0xff811B83)),
          bodyText1: TextStyle(color: const Color(0xff100E34).withOpacity(0.5)),
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('House Rent App'),
          ),
          body: const HomeScreen()),
    );
  }
}
