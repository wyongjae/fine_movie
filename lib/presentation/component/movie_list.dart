import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/presentation/component/movie_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MovieList extends StatelessWidget {
  final String theme;
  final List<Movie> movies;
  final Function(Movie movie)? onMovieTap;

  const MovieList({
    Key? key,
    required this.theme,
    required this.movies,
    this.onMovieTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  theme,
                  style: const TextStyle(fontSize: 17),
                ),
                TextButton(
                  onPressed: () {
                    context.push('/tap/home/movieMoreScreen');
                  },
                  child: const Text(
                    '더보기 >',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  10,
                  (index) {
                    return InkWell(
                      onTap: () {
                        onMovieTap?.call(movies[index]);
                      },
                      child: MovieItem(movie: movies[index]),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
