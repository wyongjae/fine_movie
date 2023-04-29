import 'dart:convert';

import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/data/data_source/movie_data_source.dart';
import 'package:fine_movie/domain/model/genre/genre.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/util/result/result.dart';

class MovieGenreRepositoryImpl
    implements MovieDataRepository<List<Genre>, Param> {
  final MovieDataSource _movieDataSource;

  MovieGenreRepositoryImpl(this._movieDataSource);

  @override
  Future<Result<List<Genre>>> fetch(Param param) async {
    try {
      final response = await _movieDataSource.fetch(param);

      final jsonResponse = jsonDecode(response.body);
      List jsonGenre = jsonResponse['genre'];
      List<Genre> genre = jsonGenre.map((e) => Genre.fromJson(e)).toList();

      return Result.success(genre);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
