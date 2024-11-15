import 'package:flutter/material.dart';

class Navigation {
  static Future<T?> to<T>(BuildContext context, Widget page) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static void back(BuildContext context) {
    Navigator.pop(context);
  }
}
