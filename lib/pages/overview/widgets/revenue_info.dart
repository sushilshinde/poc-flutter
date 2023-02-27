import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../constants/style.dart';

class RevenueInfo extends StatelessWidget {
  String? title;
  String? amount;

  RevenueInfo({super.key, this.title, this.amount});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(text: "$title \n\n", style: TextStyle(color: lightGrey)),
            TextSpan(
                text: "\$ $amount ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ])),
    );
  }
}
