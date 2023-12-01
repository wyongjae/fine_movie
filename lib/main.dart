import 'package:fine_movie/di/di_setup.dart';
import 'package:fine_movie/routes.dart';
import 'package:flutter/material.dart';

void main() {
  diSetup();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          color: Colors.grey[900],
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
