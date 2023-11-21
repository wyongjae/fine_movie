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
        canvasColor: Colors.black,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.black),
          ),
        ),
      ),
    );
  }
}
