import 'package:fine_movie/di/di_setup.dart';
import 'package:fine_movie/presentation/home/home_screen.dart';
import 'package:fine_movie/presentation/home/home_screen_view_model.dart';
import 'package:fine_movie/presentation/my/my_screen.dart';
import 'package:fine_movie/presentation/search/movie_search_screen.dart';
import 'package:fine_movie/presentation/search/movie_search_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TapScreen extends StatefulWidget {
  const TapScreen({Key? key}) : super(key: key);

  @override
  State<TapScreen> createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  int _pageIndex = 0;

  final _pages = [
    ChangeNotifierProvider(
      create: (_) => getIt<HomeScreenViewModel>(),
      child: const HomeScreen(),
    ),
    ChangeNotifierProvider(
      create: (_) => getIt<MovieSearchScreenViewModel>(),
      child: const MovieSearchScreen(),
    ),
    const MyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 15),
        unselectedLabelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'MY'),
        ],
      ),
    );
  }
}
