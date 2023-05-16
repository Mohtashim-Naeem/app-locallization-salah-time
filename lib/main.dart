import 'package:flutter/material.dart';
import 'package:namaz_app/utils/service_locator.dart';

import 'utils/app_routes.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Namaz ka Waqt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: homeScreenRoute,

      // initialRoute: splashScreenRoute,
    );
  }
}
