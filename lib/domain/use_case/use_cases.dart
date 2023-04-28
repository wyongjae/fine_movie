import 'package:fine_movie/domain/use_case/get_genre_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_detail_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_now_playing_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_popular_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_top_rated_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_upcoming_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_videos_use_case.dart';

class UseCases {
  final GetMovieTopRatedUseCase topRatedUseCase;
  final GetMovieNowPlayingUseCase nowPlayingUseCase;
  final GetMoviePopularUseCase moviePopularUseCase;
  final GetMovieUpcomingUseCase upcomingUseCase;
  final GetGenreUseCase genreUseCase;
  final GetMovieDetailUseCase movieDetailUseCase;
  final GetMovieVideosUseCase movieVideosUseCase;

  UseCases({
    required this.topRatedUseCase,
    required this.nowPlayingUseCase,
    required this.moviePopularUseCase,
    required this.upcomingUseCase,
    required this.genreUseCase,
    required this.movieDetailUseCase,
    required this.movieVideosUseCase,
  });
}
