import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:namaz_app/utils/service_locator.dart';

import 'utils/app_routes.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('en', 'US'), Locale('ur')],
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp()));
  const MyApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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
