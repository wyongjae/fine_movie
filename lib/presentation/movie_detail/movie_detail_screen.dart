import 'package:cached_network_image/cached_network_image.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/presentation/movie_detail/movie_detail_screen_view_model.dart';
import 'package:fine_movie/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieDetailScreen extends StatefulWidget {
  final Movie movie;

  const MovieDetailScreen({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieDetailScreenViewModel>();

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black54,
              elevation: 0.0,
              expandedHeight: MediaQuery.of(context).size.width * 0.6,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Stack(
                  alignment: Alignment.center,
                  children: [
                    CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: posterPath +
                            (widget.movie.posterPath ??
                                '/3bhkrj58Vtu7enYsRolD1fZdja1.jpg')),
                    GestureDetector(
                      onTap: () {
                        //todo: 유튜브 연결
                      },
                      child: const Icon(
                        Icons.play_circle_outline_outlined,
                        color: Colors.white70,
                        size: 110,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Text(
                      widget.movie.title,
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(widget.movie.genreIds.toString()),
                        SizedBox(width: 10),
                        Text('12세 관람가'),
                        SizedBox(width: 10),
                        Text('영화 시간'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.star_border),
                        SizedBox(width: 10),
                        Icon(Icons.share),
                        SizedBox(width: 10),
                        Icon(Icons.download_rounded),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '원제 : ${widget.movie.originalTitle}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '감독 : 감독 이름',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '출연 : 배우 이름',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.movie.overview,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
