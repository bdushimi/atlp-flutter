import 'package:flutter/material.dart';
import 'package:house_rent_app/screen/home/widget/best_offer.dart';
import 'package:house_rent_app/screen/home/widget/categories.dart';
import 'package:house_rent_app/screen/home/widget/custom_bar_widget.dart';
import 'package:house_rent_app/screen/home/widget/custom_bottom_navigation_bar.dart';
import 'package:house_rent_app/screen/home/widget/recommended_house.dart';
import 'package:house_rent_app/screen/home/widget/search_input.dart';
import 'package:house_rent_app/screen/home/widget/welcome_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            WelcomeText(),
            SearchInput(),
            Category(),
            RecommendedHouse(),
            BestOffer(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
