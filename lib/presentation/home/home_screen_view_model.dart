import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/home/home_state.dart';
import 'package:flutter/material.dart';

class HomeScreenViewModel with ChangeNotifier {
  final UseCases _useCases;

  HomeState _state = const HomeState();

  HomeState get state => _state;

  HomeScreenViewModel(this._useCases) {
    fetch();
  }

  Future<void> fetch() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    await _getMovieTopRated();
    await _getMovieNowPlaying();
    await _getMoviePopular();

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }

  Future<void> _getMovieTopRated() async {
    final result =
        await _useCases.topRatedUseCase.execute(const Param.movieTopRated());

    result.when(
      success: (movie) {
        _state = state.copyWith(topRatedMovie: movie);
      },
      error: (error) {},
    );
  }

  Future<void> _getMovieNowPlaying() async {
    final result =
        await _useCases.topRatedUseCase.execute(const Param.movieNowPlaying());

    result.when(
      success: (movie) {
        _state = state.copyWith(nowPlayingMovie: movie);
      },
      error: (error) {},
    );
  }

  Future<void> _getMoviePopular() async {
    final result =
        await _useCases.topRatedUseCase.execute(const Param.moviePopular());

    result.when(
      success: (movie) {
        _state = state.copyWith(popularMovie: movie);
      },
      error: (error) {},
    );
  }
}
