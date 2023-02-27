import 'package:app/helpers/local_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          child: SideMenu(key: key),
        ),
      ),
      Expanded(
          flex: 5,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: localNavigator()))
    ]);
  }
}
