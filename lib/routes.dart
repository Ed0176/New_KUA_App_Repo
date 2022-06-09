import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'lessons_page.dart';

abstract class Routes {
  static MaterialPageRoute materialRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/lessons_page":
        return MaterialPageRoute(builder: (context) => Coursepage());
    }
  }
}
