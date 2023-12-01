import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '원용재',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {},
                    child: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                height: 50,
                color: Colors.black26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '0 캐시',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: const Text(
                        '충전하기',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                height: 60,
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '다운로드 또는 다운로드한 파일 재생을 위해',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '저장소 동기화 진행이 필요합니다.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {},
                        child: const Text(
                          '동기화',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildTabButton("내 영화", 0),
                  buildTabButton("다운로드", 1),
                  buildTabButton("관심", 2),
                  buildTabButton("쿠폰함", 3),
                  buildTabButton("구입내역", 4),
                ],
              ),
              const Divider(
                color: Colors.white,
                height: 0,
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPageIndex = index;
                    });
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return _buildPage(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTabButton(String title, int index) {
    return Column(
      children: [
        Stack(
          children: [
            TextButton(
              onPressed: () {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(
                    milliseconds: 200,
                  ),
                  curve: Curves.easeInOut,
                );
              },
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color:
                      _currentPageIndex == index ? Colors.white : Colors.grey,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 3,
          width: title.length * 18.0,
          color: _currentPageIndex == index ? Colors.white : Colors.transparent,
        ),
      ],
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const Center(
          child: Text(
            '내 영화 화면',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      case 1:
        return const Center(
          child: Text(
            '다운로드 화면',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      case 2:
        return const Center(
          child: Text(
            '관심 화면',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      case 3:
        return const Center(
          child: Text(
            '쿠폰함 화면',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      case 4:
        return const Center(
          child: Text(
            '구입내역 화면',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      default:
        return Container();
    }
  }
}
