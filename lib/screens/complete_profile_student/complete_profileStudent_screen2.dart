import 'package:flutter/material.dart';

import 'components/body2Student.dart';

class CompleteProfileScreenStudent2 extends StatelessWidget {
  static String routeName = "/complete_profile_Student2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text('Sign Up'),
          ),
      body: Body2Student(),
    );
  }
}
