import 'package:app/404/error_page.dart';
import 'package:app/constants/style.dart';
import 'package:app/controllers/navigationController.dart';
import 'package:app/routers/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/menu_controller.dart' as menu;

import 'layout.dart';
import 'package:app/pages/authentication/authentication.dart';

void main() {
  Get.put(menu.MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
          name: "/not-found",
          page: () => PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: () => SiteLayout()),
        GetPage(
            name: AuthenticationPageRoute, page: () => AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
          scaffoldBackgroundColor: light,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }),
          primaryColor: Colors.blue),
      defaultTransition: Transition.noTransition,
      // home: AuthenticationPage(),
    );
  }
}
