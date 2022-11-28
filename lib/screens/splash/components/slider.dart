import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SliderPage extends StatelessWidget {
  final String description;
  final String image;

  SliderPage({required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Canopy",
            style: TextStyle(
              fontFamily: "Pacifico-Regular",
              fontSize: getProportionateScreenWidth(40),
              color: kPrimaryColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: SvgPicture.asset(
              image,
              height: getProportionateScreenHeight(265),
              width: getProportionateScreenWidth(235),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              description,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                letterSpacing: 0.7,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
