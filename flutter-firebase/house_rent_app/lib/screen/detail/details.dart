import 'package:flutter/material.dart';
import 'package:house_rent_app/model/house_model.dart';
import 'package:house_rent_app/screen/detail/widget/about_house.dart';
import 'package:house_rent_app/screen/detail/widget/detailed_app_bar.dart';
import 'package:house_rent_app/screen/detail/widget/content_intro.dart';
import 'package:house_rent_app/screen/detail/widget/house_info.dart';

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
            const SizedBox(height: 20),
            HouseInfo(house: house),
            SizedBox(height: 20),
            AboutHouse(),
            SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
                 child: Container(
                  width: double.infinity,
                   child :Center(
                     child: const Text(
                       "Book Now",
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                       ),
                       ),
                   )
                 ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
