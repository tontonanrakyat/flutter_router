import 'package:flutter/material.dart';
import 'package:flutter_router/route_names.dart';
import 'package:get/get.dart';

import 'page_first.dart';
import 'page_second.dart';
import 'page_third.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case FirstRoute:
        return GetRoute(
          page: First(),
          settings: settings,
        );
      case SecondRoute:
        return GetRoute(
          settings: settings,
          page: Second(),
          transition: Transition.fadeOnly,
        );
      case ThirdRoute:
        return GetRoute(
          settings: settings,
          page: Third(),
          transition: Transition.cupertino,
        );
      default:
        return GetRoute(
          settings: settings,
          // transition: Transition.fadeOnly,
          page: Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
