import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpScreenTeacher extends StatelessWidget {
  static String routeName = "/sign_up_teacher";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text("Sign Up"),
          ),
      body: Body(),
    );
  }
}
