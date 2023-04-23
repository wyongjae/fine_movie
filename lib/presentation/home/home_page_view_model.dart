import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/model/movie.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:flutter/material.dart';

class HomePageViewModel with ChangeNotifier {
  final MovieDataRepository movieDataRepository;

  HomePageViewModel(this.movieDataRepository);

  List<Movie> movieTopRated = [];

  Future<void> fetch(Param param) async {
    movieTopRated =
        await movieDataRepository.fetch(const Param.movieTopRated());
    notifyListeners();
  }
}
