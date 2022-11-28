import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpScreenStudent extends StatelessWidget {
  static String routeName = "/sign_up_student";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text("Sign Up"),
          ),
      body: Body(),
    );
  }
}
