import 'package:flutter/material.dart';
import 'package:restaurant_app/router/routes.dart';
import 'package:restaurant_app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'restaurant searcher',
      theme: AppTheme.light,
      routes: Routes().getRoutes(),
      initialRoute: '/login',
    );
  }
}
