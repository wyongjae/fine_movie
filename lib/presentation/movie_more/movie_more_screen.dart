import 'package:flutter/material.dart';

class MovieMoreScreen extends StatefulWidget {
  const MovieMoreScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MovieMoreScreen> createState() => _MovieMoreScreenState();
}

class _MovieMoreScreenState extends State<MovieMoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView(
          padding: const EdgeInsets.all(12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          children: [],
        ),
      ),
    );
  }
}
