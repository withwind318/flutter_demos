import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Router {
  static Future<T> push<T>(BuildContext context, Widget page) {
    return Navigator.push<T>(context, CupertinoPageRoute<T>(builder: (context) => page));
  }
}