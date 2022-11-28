import 'package:flutter/material.dart';

import 'components/body2Tetcher.dart';

class CompleteProfileScreenTeacher2 extends StatelessWidget {
  static String routeName = "/complete_profile_teacher2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text('Sign Up'),
          ),
      body: Body2Tetcher(),
    );
  }
}
