import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/data/data_source/movie_data_source.dart';
import 'package:fine_movie/data/repository/movie_data_repository_impl.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/domain/use_case/get_movie_now_playing_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_popular_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_top_rated_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_upcoming_use_case.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/home/home_screen_view_model.dart';
import 'package:fine_movie/util/result/result.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerLazySingleton<MovieDataSource>(() => MovieDataSource());
  getIt.registerLazySingleton<MovieDataRepository<Result<List<Movie>>, Param>>(
      () => MovieDataRepositoryImpl(getIt<MovieDataSource>()));
  getIt.registerLazySingleton<UseCases>(
    () => UseCases(
      topRatedUseCase: GetMovieTopRatedUseCase(
          getIt<MovieDataRepository<Result<List<Movie>>, Param>>()),
      nowPlayingUseCase: GetMovieNowPlayingUseCase(
          getIt<MovieDataRepository<Result<List<Movie>>, Param>>()),
      moviePopularUseCase: GetMoviePopularUseCase(
          getIt<MovieDataRepository<Result<List<Movie>>, Param>>()),
      upcomingUseCase: GetMovieUpcomingUseCase(
          getIt<MovieDataRepository<Result<List<Movie>>, Param>>()),
    ),
  );
  getIt.registerFactory<HomeScreenViewModel>(
      () => HomeScreenViewModel(getIt<UseCases>()));
}
