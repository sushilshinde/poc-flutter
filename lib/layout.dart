import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'helpers/responsiveness.dart';
import 'widgets/large_screen.dart';
import 'widgets/side_menu.dart';
import 'widgets/small_screen.dart';
import 'widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: LargeScreen()),
    );
  }
}
