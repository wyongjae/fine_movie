import 'package:fine_movie/presentation/home/home_page.dart';
import 'package:fine_movie/presentation/my/my_page.dart';
import 'package:fine_movie/presentation/vod/vod_page.dart';
import 'package:flutter/material.dart';

class TapPage extends StatefulWidget {
  const TapPage({Key? key}) : super(key: key);

  @override
  State<TapPage> createState() => _TapPageState();
}

class _TapPageState extends State<TapPage> {
  int _pageIndex = 0;

  final _pages = const [
    HomePage(),
    VodPage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'VOD',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'MY',
          ),
        ],
      ),
    );
  }
}
