import 'package:canopy_edu/components/have_account.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../sign_up_student/sign_up_screen.dart';
import '../../sign_up_teacher/sign_up_screen.dart';

class Body extends StatelessWidget {
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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Choice your account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "are you student or teacher ?",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SvgPicture.asset(
                  "assets/images/are_you_screen-1.svg",
                  height: getProportionateScreenHeight(265),
                  width: getProportionateScreenWidth(235),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(120),
                      height: getProportionateScreenHeight(56),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Colors.black,
                          backgroundColor: kPrimaryColor,
                          elevation: 5,
                        ),
                        onPressed: () => Navigator.pushNamed(
                            context, SignUpScreenTeacher.routeName),
                        child: Text(
                          'Teacher',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    SizedBox(
                      width: getProportionateScreenWidth(120),
                      height: getProportionateScreenHeight(56),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Colors.black,
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black, width: 2),
                          elevation: 5,
                        ),
                        onPressed: () => Navigator.pushNamed(
                            context, SignUpScreenStudent.routeName),
                        child: Text(
                          'Student',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(50)),
                HaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
