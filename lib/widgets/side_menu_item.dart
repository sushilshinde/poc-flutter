import 'package:app/helpers/responsiveness.dart';
import 'package:app/widgets/vertical_menu_item.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'horizontal_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    return HorizotalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
