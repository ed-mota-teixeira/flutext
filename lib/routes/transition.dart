import 'package:flutter/material.dart';

enum TransitionType {
  fade,
  slideUp,
  slideLeft,
  defaultTransition,
}

PageRouteBuilder createRoute(Widget page, [TransitionType transitionType = TransitionType.defaultTransition]) {
  return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: transitionType != TransitionType.defaultTransition ? 200 : 0),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        if (transitionType == TransitionType.fade) {
          return FadeTransition(opacity: animation, child: child);
        } else if (transitionType == TransitionType.slideUp) {
          return SlideTransition(
            position: Tween(begin: const Offset(0.0, 1.0), end: const Offset(0.0, 0.0)).animate(animation),
            child: child,
          );
        } else if (transitionType == TransitionType.slideLeft) {
          return SlideTransition(
            position: Tween(begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0)).animate(animation),
            child: child,
          );
        }
        // default
        return page;
      },
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return page;
      });
}
