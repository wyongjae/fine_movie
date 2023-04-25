import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:flutter/material.dart';

class HomeScreenViewModel with ChangeNotifier {
  final UseCases useCases;

  HomeScreenViewModel(this.useCases);

  List<Movie> moviesTopRated = [];

  Future<void> fetch(Param param) async {
    final movieTopRated =
        await useCases.topRatedUseCase.execute(const Param.movieTopRated());

    movieTopRated.when(
      success: (movies) {
        movies = moviesTopRated;
      },
      error: (error) {},
    );
    notifyListeners();
  }
}
