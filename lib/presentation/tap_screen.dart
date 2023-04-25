import 'package:fine_movie/presentation/home/home_screen.dart';
import 'package:fine_movie/presentation/my/my_screen.dart';
import 'package:fine_movie/presentation/vod/vod_screen.dart';
import 'package:flutter/material.dart';

class TapScreen extends StatefulWidget {
  const TapScreen({Key? key}) : super(key: key);

  @override
  State<TapScreen> createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  int _pageIndex = 0;

  final _pages = const [
    HomeScreen(),
    VodScreen(),
    MyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
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
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'VOD'),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'MY'),
        ],
      ),
    );
  }
}
