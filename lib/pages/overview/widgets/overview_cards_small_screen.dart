import 'package:app/pages/info_card_small.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../widgets/info_card.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
            topColor: Colors.orange,
            isActive: true,
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Packages Delivered",
            value: "17",
            onTap: () {},
            topColor: Colors.lightGreen,
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            onTap: () {},
            topColor: Colors.redAccent,
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCard(title: "Scheduled deliveries", value: "3", onTap: () {})
        ],
      ),
    );
  }
}
