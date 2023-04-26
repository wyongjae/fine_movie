import 'package:fine_movie/domain/use_case/get_movie_now_playing_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_popular_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_top_rated_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_upcoming_use_case.dart';

class UseCases {
  final GetMovieTopRatedUseCase topRatedUseCase;
  final GetMovieNowPlayingUseCase nowPlayingUseCase;
  final GetMoviePopularUseCase moviePopularUseCase;
  final GetMovieUpcomingUseCase upcomingUseCase;

  UseCases({
    required this.topRatedUseCase,
    required this.nowPlayingUseCase,
    required this.moviePopularUseCase,
    required this.upcomingUseCase,
  });
}
