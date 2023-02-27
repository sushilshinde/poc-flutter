import 'package:app/pages/authentication/authentication.dart';
import 'package:app/routers/routes.dart';
import 'package:flutter/material.dart';
import '../pages/clients/clients.dart';
import '../pages/drivers/drivers.dart';
import '../pages/overview/overview.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverviewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    case AuthenticationPageRoute:
      return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
