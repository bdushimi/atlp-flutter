import 'package:flutter/material.dart';
import 'package:house_rent_app/model/house_model.dart';
import 'package:house_rent_app/screen/detail/widget/detailed_app_bar.dart';
import 'package:house_rent_app/screen/detail/widget/content_intro.dart';

class Details extends StatelessWidget {
  final House house;
  const Details({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailedAppBar(house: house),
            const SizedBox(height: 20),
            ContentIntro(house: house),

          ],
        ),
      ),
    );
  }
}
