import 'package:flutter/material.dart';
import 'package:canopy_edu/constants.dart';
import 'package:canopy_edu/size_config.dart';
import 'complete_profile_form3.dart';

class Body3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text("Select your Material", style: headingStyle),
                Text(
                  "Select material from box \nor search on another ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                SearchBox(),
                CompleteProfileForm3(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
