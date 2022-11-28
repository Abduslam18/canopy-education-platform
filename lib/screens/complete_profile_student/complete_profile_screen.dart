import 'package:flutter/material.dart';

import 'components/body.dart';

class CompleteProfileScreenStudent extends StatelessWidget {
  static String routeName = "/complete_profile_Student";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text('Sign Up'),
          ),
      body: Body(),
    );
  }
}
