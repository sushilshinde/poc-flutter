import 'package:app/constants/controllers.dart';
import 'package:app/helpers/responsiveness.dart';
import 'package:app/pages/authentication/authentication.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:app/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../constants/style.dart';
import '../routers/routes.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 80,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("icons/logo.png"),
                    ),
                    Flexible(
                        child: CustomText(
                      text: "Dash",
                      size: 20,
                      weight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(
                      width: _width / 48,
                    )
                  ],
                ),
              ],
            ),
          SizedBox(
            height: 40,
          ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((item) => SideMenuItem(
                      itemName: item.name == AuthenticationPageRoute
                          ? "Logout"
                          : item.name,
                      onTap: () {
                        if (item.route == AuthenticationPageRoute) {
                          // go to authentication page
                          Get.offAllNamed(AuthenticationPageRoute);
                          menuController
                              .changeActiveItem(OverViewPageDisplayName);
                        }

                        if (!menuController.isActive(item.name)) {
                          menuController.changeActiveItem(item.name);

                          if (ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                          navigationController.navigateTo(item.route);
                          // go to item name route
                        }
                      },
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
