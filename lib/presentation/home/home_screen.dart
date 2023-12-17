import 'package:fine_movie/presentation/component/movie_list.dart';
import 'package:fine_movie/presentation/home/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeScreenViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.white))
          : CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Colors.black54,
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                  leading: const SizedBox(),
                  leadingWidth: 0,
                  title: const Text(
                    'Jay Movie',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  expandedHeight:
                      MediaQuery.of(context).size.width * 750 / 1000,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Stack(
                      children: [
                        Positioned(
                          bottom: 16,
                          left: 12,
                          child: SmoothPageIndicator(
                            controller: pageController,
                            count: 5,
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
                            //todo: event screen 으로 넘어가게

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
                    MovieList(
                      theme: '현재 상영 중인 작품들',
                      movies: state.nowPlayingMovie,
                      onMovieTap: (movie) {
                        context.push(
                          '/tap/home/detailScreen',
                          extra: movie,
                        );
                      },
                    ),
                    MovieList(
                      theme: '이번 주 인기작 TOP 10',
                      movies: state.topRatedMovie,
                      onMovieTap: (movie) {
                        context.push('/tap/home/detailScreen', extra: movie);
                      },
                    ),
                    MovieList(
                      theme: '대중에게 인기있는 영화',
                      movies: state.popularMovie,
                      onMovieTap: (movie) {
                        context.push('/tap/home/detailScreen', extra: movie);
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ]),
                ),
              ],
            ),
    );
  }
}
