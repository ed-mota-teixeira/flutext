import 'package:flutext/page/error_page.dart';
import 'package:flutext/page/home_page.dart';
import 'package:flutext/page/result_page.dart';
import 'package:flutext/routes/constants.dart';
import 'package:flutext/routes/transition.dart';
import 'package:flutter/material.dart';

class OnGenerateRoute {
  static PageRoute routes(RouteSettings settings) {
    switch (settings.name) {
      case kHomeRoute:
        return createRoute(const HomePage(), TransitionType.fade);
      case kResultRoute:
        return createRoute(const ResultPage(), TransitionType.slideLeft);
      default:
        return createRoute(const ErrorPage());
    }
  }
}
