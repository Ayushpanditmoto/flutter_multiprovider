import 'package:flutter/material.dart';
import 'package:provide/Home.dart';
import 'package:provide/Screens/Second.dart';
import 'package:provide/Screens/Third.dart';
import 'constants.dart';

class MyRoutes {
  static Route<dynamic> genrateRoute(RouteSettings setting) {
    switch (setting.name) {
      case homePageRoute:
        return MaterialPageRoute<void>(builder: (_) => const Home());
      case secondRoute:
        var args = setting.arguments as String;
        return MaterialPageRoute<void>(builder: (_) => Second(args));
      case thirdRoute:
        return MaterialPageRoute<void>(builder: (_) => const Third());
      default:
    }
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
            // title: Text(setting.name),
            ),
        body: Center(
          child: Text("No route defined for ${setting.name}"),
        ),
      ),
    );
  }
}
