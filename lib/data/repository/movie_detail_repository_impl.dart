import 'dart:convert';

import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/data/data_source/movie_data_source.dart';
import 'package:fine_movie/domain/model/movie_detail/movie_detail.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/util/result/result.dart';

class MovieDetailRepositoryImpl
    implements MovieDataRepository<MovieDetail, Param> {
  final MovieDataSource _movieDataSource;

  MovieDetailRepositoryImpl(this._movieDataSource);

  @override
  Future<Result<MovieDetail>> fetch(Param param) async {
    try {
      final response = await _movieDataSource.fetch(param);

      Map<String, dynamic> jsonResult = jsonDecode(response.body);
      MovieDetail movieDetail = MovieDetail.fromJson(jsonResult);

      return Result.success(movieDetail);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
