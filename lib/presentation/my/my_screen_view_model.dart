import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/my/my_screen_state.dart';
import 'package:fine_movie/util/shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class MyScreenViewModel with ChangeNotifier {
  final UseCases _useCases;

  MyScreenState _state = const MyScreenState();

  MyScreenState get state => _state;

  MyScreenViewModel(this._useCases);

  Future<void> _getLikeMovieDetail(int movieId) async {
    final result =
        await _useCases.movieDetailUseCase.execute(Param.movieDetail(movieId));

    result.when(
      success: (movieDetails) {
        _state = state.copyWith(movieDetails: movieDetails);
      },
      error: (message) {},
    );

    notifyListeners();
  }

  Future<void> fetchLikedMovies() async {
    final Set<int> likedMovieIds =
        await SharedPreferencesService.getLikedMovieIds();

    for (int movieId in likedMovieIds) {
      print(movieId);

      await _getLikeMovieDetail(movieId);
    }

    notifyListeners();
  }
}
