import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/data/data_source/movie_data_source.dart';
import 'package:fine_movie/data/repository/genre_data_repository_impl.dart';
import 'package:fine_movie/data/repository/movie_data_repository_impl.dart';
import 'package:fine_movie/data/repository/movie_detail_repository_impl.dart';
import 'package:fine_movie/domain/model/genre/genre.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/domain/model/movie_detail/movie_detail.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/domain/use_case/get_genre_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_detail_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_now_playing_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_popular_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_top_rated_use_case.dart';
import 'package:fine_movie/domain/use_case/get_movie_upcoming_use_case.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/home/home_screen_view_model.dart';
import 'package:fine_movie/presentation/movie_detail/movie_detail_screen_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  /// Repository di
  getIt.registerLazySingleton<MovieDataSource>(() => MovieDataSource());

  getIt.registerLazySingleton<MovieDataRepository<List<Movie>, Param>>(
      () => MovieDataRepositoryImpl(getIt<MovieDataSource>()));

  getIt.registerLazySingleton<MovieDataRepository<List<Genre>, Param>>(
      () => GenreDataRepositoryImpl(getIt<MovieDataSource>()));

  getIt.registerLazySingleton<MovieDataRepository<MovieDetail, Param>>(
      () => MovieDetailRepositoryImpl(getIt<MovieDataSource>()));

  /// UseCase di
  getIt.registerLazySingleton<UseCases>(
    () => UseCases(
      topRatedUseCase: GetMovieTopRatedUseCase(
          getIt<MovieDataRepository<List<Movie>, Param>>()),
      nowPlayingUseCase: GetMovieNowPlayingUseCase(
          getIt<MovieDataRepository<List<Movie>, Param>>()),
      moviePopularUseCase: GetMoviePopularUseCase(
          getIt<MovieDataRepository<List<Movie>, Param>>()),
      upcomingUseCase: GetMovieUpcomingUseCase(
          getIt<MovieDataRepository<List<Movie>, Param>>()),
      genreUseCase:
          GetGenreUseCase(getIt<MovieDataRepository<List<Genre>, Param>>()),
      movieDetailUseCase: GetMovieDetailUseCase(
          getIt<MovieDataRepository<MovieDetail, Param>>()),
    ),
  );

  /// ViewModel di
  getIt.registerFactory<HomeScreenViewModel>(
      () => HomeScreenViewModel(getIt<UseCases>()));

  getIt.registerFactory<MovieDetailScreenViewModel>(
      () => MovieDetailScreenViewModel(getIt<UseCases>(), 238));
}
