import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
        Text('Hi, There!', 
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text('Welcome to House Rent App'),
      ]
      ),
    );
  }
}