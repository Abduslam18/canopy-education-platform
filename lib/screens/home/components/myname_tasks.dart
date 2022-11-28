import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Myname_tasks extends StatelessWidget {
  const Myname_tasks({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
