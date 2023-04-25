import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:flutter/material.dart';

class HomeScreenViewModel with ChangeNotifier {
  final MovieDataRepository movieDataRepository;

  HomeScreenViewModel(this.movieDataRepository);

  List<Movie> movieTopRated = [];

  Future<void> fetch(Param param) async {
    movieTopRated =
        await movieDataRepository.fetch(const Param.movieTopRated());
    notifyListeners();
  }
}
