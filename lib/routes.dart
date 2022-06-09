import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static MaterialPageRoute materialRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/lessons_page":
        return MaterialPageRoute(builder: (context) => Landing());
      case "/signup":
        return MaterialPageRoute(builder: (context) => Signup());
      case "/login":
        return MaterialPageRoute(builder: (context) => Login());
      case "/vendor":
        return MaterialPageRoute(builder: (context) => Vendor());
      case "/editproduct":
        return MaterialPageRoute(builder: (context) => EditProduct());
      case "/editvendor":
        return MaterialPageRoute(builder: (context) => EditVendor());
      default:
        var routeArray = settings.name.split('/');
        if(settings.name.contains('/editproduct/')){
          return MaterialPageRoute(builder: (context) => EditProduct(productId: routeArray[2],));
        }else if(settings.name.contains('/customer/')){
          return MaterialPageRoute(builder: (context) => Customer(marketId: routeArray[2],));
        }else if(settings.name.contains('/editvendor/')){
          return MaterialPageRoute(builder: (context) => EditVendor(vendorId: routeArray[2],));
        }
        return MaterialPageRoute(builder: (context) => Login());
    }
  }