import 'package:flutter/material.dart';
import 'package:house_rent_app/screen/detail/widget/menu_info.dart';

import '../../../model/house_model.dart';

class HouseInfo extends StatelessWidget {
  final House house;
  const HouseInfo({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: const [
              MenuInfo(
                  imageUrl: "assets/icons/bedroom.svg",
                  content: "3 Bedroom\n2 Master Bedroom"),
              MenuInfo(
                  imageUrl: "assets/icons/bathroom.svg",
                  content: "5 Bathroom\n3 Toilet")
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              MenuInfo(
                  imageUrl: "assets/icons/kitchen.svg",
                  content: "2 Bedroom\n120 sqt"),
              MenuInfo(
                  imageUrl: "assets/icons/parking.svg",
                  content: "2 Parking\n180 sql")
            ],
          )
        ],
      ),
    );
  }
}
