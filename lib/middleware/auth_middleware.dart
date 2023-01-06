import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:middleware/main.dart';

class AuthMiddleWare extends GetMiddleware {
  //here we've ready function to control the initalRoute.

  @override
  RouteSettings? redirect(String? route) {
    if (sharepref!.getString('role') == 'user')
      return RouteSettings(name: '/home');
    else if (sharepref!.getString('role') == 'admin')
      return RouteSettings(name: '/adminS');
  }
}
