import 'package:flutter/material.dart';
import 'package:provide/Provider/appModel.dart';
import 'package:provide/Provider/textModel.dart';
import 'package:provide/constants.dart';
import 'package:provide/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AppModel()),
      ChangeNotifierProvider(create: (context) => TextModel()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      onGenerateRoute: MyRoutes.genrateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: homePageRoute,
    );
  }
}
