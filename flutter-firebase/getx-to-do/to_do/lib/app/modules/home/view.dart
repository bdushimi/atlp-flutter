import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:to_do/app/modules/home/controller.dart';
import 'package:to_do/app/core/utils/extensions.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Text(
            "Home Page",
            style: TextStyle(
              fontSize: 24.0.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ));
  }
}
