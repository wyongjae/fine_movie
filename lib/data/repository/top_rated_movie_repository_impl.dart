import 'dart:convert';

import 'package:fine_movie/data/data_source/top_rated_movie_api.dart';
import 'package:fine_movie/domain/model/movie.dart';
import 'package:fine_movie/domain/repository/top_rated_movie_repository.dart';

class TopRatedMovieRepositoryImpl implements TopRatedMovieRepository {
  final TopRatedMovieApi topRatedMovieApi;

  TopRatedMovieRepositoryImpl(this.topRatedMovieApi);

  @override
  Future<Movie> fetch() async {
    try {
      final response = await topRatedMovieApi.fetch();

      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      Movie movie = Movie.fromJson(jsonResponse);
      return movie;
    } catch (e) {
      throw Exception('Failed to fetch top rated movies');
    }
  }
}
