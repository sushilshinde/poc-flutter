import 'package:app/constants/controllers.dart';
import 'package:app/helpers/responsiveness.dart';
import 'package:app/pages/drivers/widgets/drivers_table.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DriversPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      weight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [DriverTable()],
          ))
        ],
      ),
    );
  }
}
