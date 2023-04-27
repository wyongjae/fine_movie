import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/domain/model/movie_detail/movie_detail.dart';
import 'package:flutter/material.dart';

class MovieDetailInfo extends StatelessWidget {
  final Movie movie;
  final MovieDetail? movieDetail;

  const MovieDetailInfo({
    Key? key,
    required this.movie,
    required this.movieDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movie.title,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              '${movieDetail?.genres.take(2).map((e) => e.name).join(', ')} ',
              style: const TextStyle(fontSize: 15),
            ),
            const Text('· 12세 관람가 ', style: TextStyle(fontSize: 15)),
            Text('· ${movieDetail?.runtime} 분' ?? '',
                style: const TextStyle(fontSize: 15)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Icon(Icons.star_border, size: 40),
            SizedBox(width: 15),
            Icon(Icons.share, size: 35),
            SizedBox(width: 15),
            Icon(Icons.download_rounded, size: 40),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          '원제 : ${movie.originalTitle}',
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
          movie.overview ?? '',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
