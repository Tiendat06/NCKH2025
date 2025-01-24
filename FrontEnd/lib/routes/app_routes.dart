import 'package:flutter/material.dart';
import 'package:frontend/routes/settings_routes.dart';
import 'package:frontend/routes/user_routes.dart';
import 'package:frontend/routes/site_routes.dart';

class AppRoutes {

  static final Map<String, WidgetBuilder> appRoutes = {
    ..._getRoutes(siteRoutes),
    ..._getRoutes(userRoutes),
    ..._getRoutes(settingsRoutes)
  };

  static Map<String, WidgetBuilder> _getRoutes(dynamic routes) {
    Map<String, WidgetBuilder> routeMap = {};
    for (var route in routes) {
      routeMap[route.path] = (context) => route.component;
    }
    return routeMap;
  }
}