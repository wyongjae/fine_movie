import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/presentation/component/movie_item.dart';
import 'package:fine_movie/presentation/component/movie_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MovieMoreScreen extends StatefulWidget {
  final List<Movie> movies;
  final MovieList? movieList;

  const MovieMoreScreen({
    Key? key,
    required this.movies,
    this.movieList,
  }) : super(key: key);

  @override
  State<MovieMoreScreen> createState() => _MovieMoreScreenState();
}

class _MovieMoreScreenState extends State<MovieMoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.movieList?.theme ?? 'MovieList의 theme을 받아오게 수정',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: widget.movies.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 0.55),
                  itemBuilder: (BuildContext context, int index) {
                    final movie = widget.movies[index];

                    return GestureDetector(
                      onTap: () {
                        final movie = widget.movies[index];

                        context.push('/tap/home/detailScreen', extra: movie);
                      },
                      child: Card(
                        color: Colors.grey,
                        elevation: 0.0,
                        child: MovieItem(movie: movie),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
