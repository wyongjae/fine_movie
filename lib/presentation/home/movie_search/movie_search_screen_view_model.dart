import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/home/movie_search/movie_search_state.dart';
import 'package:flutter/material.dart';

class MovieSearchScreenViewModel with ChangeNotifier {
  final UseCases _useCases;

  MovieSearchState _state = const MovieSearchState();

  MovieSearchState get state => _state;

  MovieSearchScreenViewModel(this._useCases);

  Future<void> fetch(String query) async {
    final result = await _useCases.movieWithQueryUseCase
        .execute(Param.movieWithQuery(query));

    result.when(
      success: (movies) {
        _state = state.copyWith(searchedMovies: movies);
      },
      error: (error) {},
    );
  }

  void searchMovies(String query) {}
}
