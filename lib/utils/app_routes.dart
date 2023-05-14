
import 'package:flutter/material.dart';
import 'package:namaz_app/screens/home_screen.dart';
import 'package:namaz_app/screens/splash_screen.dart';



const splashScreenRoute = '/';
const homeScreenRoute = '/Home';


Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case splashScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen());

    case homeScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen());
  
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen());
  }
}
