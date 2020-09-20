import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() => runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [Locale('en', 'US'), Locale('sv')],
    fallbackLocale: Locale('en'),
    path: 'assets/translations'));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: HomeScreen(),
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          accentColor: Colors.pinkAccent,
        ));
  }
}
