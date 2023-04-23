import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/data/data_source/movie_data_source.dart';
import 'package:fine_movie/data/repository/movie_data_repository_impl.dart';
import 'package:fine_movie/domain/model/movie.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/presentation/home/home_page_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerLazySingleton<MovieDataSource>(() => MovieDataSource());
  getIt.registerLazySingleton<MovieDataRepository<Movie, Param>>(
      () => MovieDataRepositoryImpl(getIt<MovieDataSource>()));
  getIt.registerFactory(
      () => HomePageViewModel(getIt<MovieDataRepository<Movie, Param>>()));
}
