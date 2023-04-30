import 'dart:convert';

import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/data/data_source/movie_data_source.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/util/result/result.dart';

class MovieDataRepositoryImpl
    implements MovieDataRepository<List<Movie>, Param> {
  final MovieDataSource _movieDataSource;

  MovieDataRepositoryImpl(this._movieDataSource);

  @override
  Future<Result<List<Movie>>> fetch(Param param) async {
    try {
      final response = await _movieDataSource.fetch(param);

      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      List jsonResult = jsonResponse['results'];
      List<Movie> movies = jsonResult.map((e) => Movie.fromJson(e)).toList();

      return Result.success(movies);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
