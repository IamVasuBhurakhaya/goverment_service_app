import 'package:flutter/material.dart';
import 'package:goverment_service_app/screens/home/views/home_screen.dart';

class Routes {
  static const String home = "/";
  static Map<String, Widget Function(BuildContext)> routes = {
    Routes.home: (context) => const HomePage(),
  };
}
