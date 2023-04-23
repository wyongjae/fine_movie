import 'dart:convert';

import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/data/data_source/movie_data_source.dart';
import 'package:fine_movie/domain/model/movie.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';

class MovieDataRepositoryImpl implements MovieDataRepository<Movie, Param> {
  final MovieDataSource movieDataSource;

  MovieDataRepositoryImpl(this.movieDataSource);

  @override
  Future<Movie> fetch(Param param) async {
    try {
      final response = await movieDataSource.fetch(param);

      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      Movie movie = Movie.fromJson(jsonResponse);
      return movie;
    } catch (e) {
      throw Exception('Failed to fetch top rated movies');
    }
  }
}
