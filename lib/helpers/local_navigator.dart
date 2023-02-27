import 'package:app/constants/controllers.dart';
import 'package:app/routers/router.dart';
import 'package:flutter/widgets.dart';
import 'package:app/routers/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
