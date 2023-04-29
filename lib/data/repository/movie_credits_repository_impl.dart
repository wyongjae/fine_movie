import 'dart:convert';

import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/data/data_source/movie_data_source.dart';
import 'package:fine_movie/domain/model/credits/credits.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/util/result/result.dart';

class MovieCreditsRepositoryImpl
    implements MovieDataRepository<Credits, Param> {
  final MovieDataSource _movieDataSource;

  MovieCreditsRepositoryImpl(this._movieDataSource);

  @override
  Future<Result<Credits>> fetch(Param param) async {
    final response = await _movieDataSource.fetch(param);

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    Credits credits = Credits.fromJson(jsonResponse);

    return Result.success(credits);
  }
}
