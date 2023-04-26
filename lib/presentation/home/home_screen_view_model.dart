import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/home/home_state.dart';
import 'package:flutter/material.dart';

class HomeScreenViewModel with ChangeNotifier {
  final UseCases useCases;

  HomeState _state = const HomeState();

  HomeState get state => _state;

  HomeScreenViewModel(this.useCases) {
    fetch(const Param.movieTopRated());
  }

  Future<void> fetch(Param param) async {
    final result =
        await useCases.topRatedUseCase.execute(const Param.movieTopRated());

    result.when(
      success: (movie) {
        _state = state.copyWith(topRatedMovie: movie);
      },
      error: (error) {},
    );

    notifyListeners();
  }
}
