import 'package:fine_movie/domain/model/credits/credits.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/domain/model/movie_detail/movie_detail.dart';
import 'package:fine_movie/presentation/home/movie_detail/movie_detail_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieDetailInfo extends StatefulWidget {
  final Movie movie;
  final MovieDetail? movieDetail;
  final Credits? credits;

  const MovieDetailInfo({
    Key? key,
    required this.movie,
    required this.movieDetail,
    required this.credits,
  }) : super(key: key);

  @override
  State<MovieDetailInfo> createState() => _MovieDetailInfoState();
}

class _MovieDetailInfoState extends State<MovieDetailInfo> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieDetailScreenViewModel>();
    final state = viewModel.state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.movie.title,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              '${widget.movieDetail?.genres.take(2).map((e) => e.name).join(', ')} ',
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            const Text(
              '· 12세 관람가 ',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            Text(
              '· ${widget.movieDetail?.runtime} 분',
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                viewModel.movieLike(widget.movie.id);
              },
              child: FutureBuilder<bool>(
                future: viewModel.isLiked,
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? Icon(
                          snapshot.data! ? Icons.star : Icons.star_border,
                          size: 40,
                          color: snapshot.data! ? Colors.yellow : Colors.white,
                        )
                      : const CircularProgressIndicator();
                },
              ),
            ),
            const SizedBox(width: 15),
            const Icon(
              Icons.share,
              size: 35,
              color: Colors.white,
            ),
            const SizedBox(width: 15),
            const Icon(
              Icons.download_rounded,
              size: 40,
              color: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          '원제: ${widget.movie.originalTitle}',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          '감독: ${viewModel.director}',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          '출연: ${viewModel.cast}',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          widget.movie.overview,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
