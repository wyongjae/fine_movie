import 'package:fine_movie/domain/model/movie.dart';

abstract class TopRatedMovieRepository {
  Future<Movie> fetch();
}