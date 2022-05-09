import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBarWidget extends StatelessWidget implements PreferredSize {
  const CustomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg")
        ),
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/avatar.jpeg"),
        )
      ]),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
