import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:flutter/material.dart';

class MovieDetailScreenViewModel with ChangeNotifier {
  final UseCases _useCases;

  MovieDetailScreenViewModel(this._useCases);

  Future<void> fetch(Param param) async {
    final genres = await _useCases.genreUseCase.execute(const Param.genres());

    final movieDetail = await _useCases.movieDetailUseCase
        .execute(const Param.movieDetail(238));
  }
}
