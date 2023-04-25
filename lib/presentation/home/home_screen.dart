import 'package:fine_movie/di/di_setup.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/presentation/component/movie_item.dart';
import 'package:fine_movie/presentation/home/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<HomeScreenViewModel>();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.black54,
            elevation: 0.0,
            shadowColor: Colors.transparent,
            leading: const SizedBox(),
            leadingWidth: 0,
            title: const Text(
              'Fine Movie',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_sharp),
              )
            ],
            expandedHeight: MediaQuery.of(context).size.width * 750 / 1000,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    left: 12,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 6,
                      effect: const WormEffect(
                          dotWidth: 6,
                          dotHeight: 6,
                          activeDotColor: Colors.white,
                          dotColor: Colors.grey),
                    ),
                  ),
                  PageView(
                    controller: pageController,
                    children: [
                      Image.asset('images/godfather.jpg'),
                      Image.asset('images/godfather.jpg'),
                      Image.asset('images/godfather.jpg'),
                      Image.asset('images/godfather.jpg'),
                      Image.asset('images/godfather.jpg'),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            InkWell(
              onTap: () {
                context.push('/tap/home/detailScreen');
              },
              child: const MovieItem(
                theme: '이번 주 인기작 TOP 10',
                movie: Movie(
                    title: 'title',
                    posterPath: '/tmU7GeKVybMWFButWEGl2M4GeiP.jpg',
                    genreIds: [],
                    overview: '',
                    releaseDate: '',
                    id: 0,
                    originalTitle: ''),
              ),
            ),
                InkWell(
                  onTap: () {
                    context.push('/tap/home/detailScreen');
                  },
                  child: const MovieItem(
                    theme: '현재 상영작',
                    movie: Movie(
                        title: 'title',
                        posterPath: '/tmU7GeKVybMWFButWEGl2M4GeiP.jpg',
                        genreIds: [],
                        overview: '',
                        releaseDate: '',
                        id: 0,
                        originalTitle: ''),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.push('/tap/home/detailScreen');
                  },
                  child: const MovieItem(
                    theme: '개봉 예정작',
                    movie: Movie(
                        title: 'title',
                        posterPath: '/tmU7GeKVybMWFButWEGl2M4GeiP.jpg',
                        genreIds: [],
                        overview: '',
                        releaseDate: '',
                        id: 0,
                        originalTitle: ''),
                  ),
                ),
          ]))
        ],
      ),
    );
  }
}