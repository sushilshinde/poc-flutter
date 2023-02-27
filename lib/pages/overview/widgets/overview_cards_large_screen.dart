import 'package:app/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: "Rides in progress",
          value: "7",
          onTap: () {},
          topColor: Colors.orange,
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: "Packages Delivered",
          value: "17",
          onTap: () {},
          topColor: Colors.lightGreen,
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: "Cancelled delivery",
          value: "3",
          onTap: () {},
          topColor: Colors.redAccent,
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(title: "Scheduled deliveries", value: "3", onTap: () {}),
        SizedBox(
          width: _width / 64,
        ),
      ],
    );
  }
}
