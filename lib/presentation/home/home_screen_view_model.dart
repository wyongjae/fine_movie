import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/home/home_state.dart';
import 'package:flutter/material.dart';

class HomeScreenViewModel with ChangeNotifier {
  final UseCases _useCases;

  HomeState _state = const HomeState();

  HomeState get state => _state;

  HomeScreenViewModel(this._useCases) {
    fetch(const Param.movieTopRated());
  }

  Future<void> fetch(Param param) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result =
        await _useCases.topRatedUseCase.execute(const Param.movieTopRated());

    result.when(
      success: (movie) {
        _state = state.copyWith(topRatedMovie: movie);
      },
      error: (error) {},
    );

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
