import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/movie_detail/movie_detail_state.dart';
import 'package:flutter/material.dart';

class MovieDetailScreenViewModel with ChangeNotifier {
  final UseCases _useCases;
  int movieId;

  MovieDetailState _state = const MovieDetailState();

  MovieDetailState get state => _state;

  MovieDetailScreenViewModel(this._useCases, this.movieId);

  Future<void> fetch() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    await _getMovieDetail(movieId);

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }

  Future<void> _getGenres() async {
    final genres = await _useCases.genreUseCase.execute(const Param.genres());
  }

  Future<void> _getMovieDetail(int movieId) async {
    final result =
        await _useCases.movieDetailUseCase.execute(Param.movieDetail(movieId));

    result.when(
      success: (movieDetail) {
        _state = state.copyWith(movieDetails: movieDetail);
      },
      error: (message) {},
    );

    notifyListeners();
  }
}
