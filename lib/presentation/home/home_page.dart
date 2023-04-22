import 'package:fine_movie/domain/model/movie.dart';
import 'package:fine_movie/presentation/component/movie_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const _HomeAppBar(),
                const InkWell(
                  child: MovieItem(
                    theme: '이번 주 인기작 TOP 10',
                    movie: Movie(
                        title: 'movie title',
                        posterPath:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd'
                                '9GcQ-qbTBkThWHAY0Zcrw0ipDxt21c3m0Ppdu6RGXd58c&s'),
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
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
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
