import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/home/movie_detail/movie_detail_state.dart';
import 'package:fine_movie/presentation/search/movie_search_state.dart';
import 'package:flutter/material.dart';

class MovieSearchScreenViewModel with ChangeNotifier {
  final UseCases _useCases;

  MovieSearchState _searchState = const MovieSearchState();

  MovieSearchState get searchState => _searchState;

  MovieDetailState _detailState = const MovieDetailState();

  MovieDetailState get detailState => _detailState;

  String? get cast =>
      detailState.credits?.cast.take(3).map((e) => e.name).join(', ');

  MovieSearchScreenViewModel(this._useCases);

  Future<void> fetch(String query) async {
    final result = await _useCases.movieWithQueryUseCase
        .execute(Param.movieWithQuery(query));

    result.when(
      success: (movies) {
        _searchState = searchState.copyWith(searchedMovies: movies);

        notifyListeners();
      },
      error: (error) {},
    );
  }

  Future<void> getCredits(int movieId) async {
    final result =
        await _useCases.creditsUseCase.execute(Param.movieCredits(movieId));

    result.when(
      success: (credits) {
        _detailState = detailState.copyWith(credits: credits);
      },
      error: (message) {},
    );
  }
}
