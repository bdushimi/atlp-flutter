import 'package:flutter/material.dart';
import 'package:house_rent_app/screen/home/widget/custom_bar_widget.dart';
import 'package:house_rent_app/screen/home/widget/welcome_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const CustomBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeText(),
          ],
        ),
      ),
    );
  }
}
