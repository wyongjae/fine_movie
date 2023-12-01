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
            padding: const EdgeInsets.all(6),
            child: InkWell(
              onTap: () {
                context.push(
                  '/tap/home/movieMoreScreen',
                  extra: {
                    'movies': movies,
                    'theme': theme,
                  },
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    theme,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
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
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: MovieItem(
                          movie: movies[index],
                        ),
                      ),
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
