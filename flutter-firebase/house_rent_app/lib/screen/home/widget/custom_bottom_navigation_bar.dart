import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomBarItems = [
      'home',
      'home_search',
      'notification',
      'chat',
      'home_mark'
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.only(bottom:25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 7,
          offset : const Offset(0, 0),
        ),
        ]
      ),
      child : Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: bottomBarItems.map(
          (e) => SvgPicture.asset('assets/icons/$e.svg',
          color: Theme.of(context).colorScheme.primary,
          )).toList(),
      ),
    );
  }
}
