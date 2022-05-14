import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../model/house_model.dart';

class DetailedAppBar extends StatelessWidget {
  final House house;
  const DetailedAppBar({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(house.imageUrl,
              fit: BoxFit.cover, height: double.infinity),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 20,
                      width: 20,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/arrow.svg"),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/mark.svg"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
