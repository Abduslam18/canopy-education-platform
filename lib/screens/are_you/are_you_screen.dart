import 'package:flutter/material.dart';

import 'components/body.dart';

class Are_you_screen extends StatelessWidget {
  static String routeName = "/are_you_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text("Choice Account"),
          ),
      body: Body(),
    );
  }
}
