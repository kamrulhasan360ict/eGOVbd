import 'package:flutter/material.dart';

class AppRoutes {
  // Push replacement with a custom transition (default slide transition)
  static pushReplacement(BuildContext context, {required Widget page, PageRouteBuilder? pageRoute}) {
    Navigator.pushReplacement(
      context,
      _createRoute(page, pageRoute),
    );
  }

  // Push with a custom transition (default slide transition)
  static push(BuildContext context, {required Widget page, PageRouteBuilder? pageRoute}) {
    Navigator.push(
      context,
      _createRoute(page, pageRoute),
    );
  }

  // Push and remove until with a custom transition (default slide transition)
  static pushAndRemoveUntil(BuildContext context, {required Widget page, PageRouteBuilder? pageRoute}) {
    Navigator.pushAndRemoveUntil(
      context,
      _createRoute(page, pageRoute),
          (route) => false, // Removes all routes until this one
    );
  }

  // Pop the current route
  static pop(BuildContext context) {
    Navigator.pop(context);
  }

  // Default route creation with slide transition
  static Route _createRoute(Widget page, PageRouteBuilder? pageRoute) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: const Duration(milliseconds: 400),  // Custom transition duration

      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Default slide transition
        const begin = Offset(1.0, 0.0); // Slide from right to left
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
}