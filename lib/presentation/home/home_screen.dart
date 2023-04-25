import 'package:fine_movie/di/di_setup.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/presentation/component/movie_item.dart';
import 'package:fine_movie/presentation/home/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {});
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<HomeScreenViewModel>();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const _HomeAppBar(),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeAppBar extends StatelessWidget {
  const _HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.black54,
          elevation: 0.0,
          shadowColor: Colors.transparent,
          leading: const SizedBox(),
          leadingWidth: 0,
          title: const Text(
            'Fine Movie',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_sharp),
            )
          ],
        ),
      ],
    );
  }
}
