import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/presentation/component/movie_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MovieMoreScreen extends StatefulWidget {
  final List<Movie> movies;
  final String theme;

  const MovieMoreScreen({
    Key? key,
    required this.movies,
    required this.theme,
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
          widget.theme,
          style: const TextStyle(fontSize: 24),
        ),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: widget.movies.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 0.55,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final movie = widget.movies[index];

                    return GestureDetector(
                      onTap: () {
                        final movie = widget.movies[index];

                        context.push('/tap/home/detailScreen', extra: movie);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        child: MovieItem(
                          movie: movie,
                        ),
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
