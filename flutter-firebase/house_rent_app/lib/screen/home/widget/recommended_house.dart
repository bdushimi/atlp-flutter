import 'package:flutter/material.dart';
import 'package:house_rent_app/widget/circular_icon.dart';

import '../../../model/house_model.dart';

/// This class is a stateless widget that displays a recommended house.
class RecommendedHouse extends StatelessWidget {
  final recommendedHouses = House.generateRecommendedHouses();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 340,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
                  height: 300,
                  width: 200,
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage(
                               recommendedHouses[index].imageUrl,
                             ),
                             fit: BoxFit.cover
                             ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: CircularIconWidget(
                          iconUrl: 'assets/icons/mark.svg',
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
            separatorBuilder: (_, index) => const SizedBox(width: 20),
            itemCount: recommendedHouses.length));
  }
}
