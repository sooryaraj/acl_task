import 'package:acl_task/screens/dashboard_screen.dart';
import 'package:acl_task/screens/login_screen.dart';
import 'package:acl_task/utils/route_paths.dart' as routes;
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.loginScreen:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case routes.dashboardScreen:
      return MaterialPageRoute(builder: (context) => const DashboardScreen());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}
