import 'package:flutter/material.dart';
import 'package:canopy_edu/size_config.dart';
import 'bodyslider.dart';

class Slider_creen extends StatelessWidget {
  static String routeName = "/landing";

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Landing(),
    );
  }
}
