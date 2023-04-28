import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/movie_detail/movie_detail_state.dart';
import 'package:fine_movie/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
    await _getVideos(movieId);

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }

  Future<void> _getGenres() async {
    final result = await _useCases.genreUseCase.execute(const Param.genres());

    result.when(
      success: (genres) {},
      error: (message) {},
    );
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

  Future<void> _getVideos(int movieId) async {
    final result =
        await _useCases.movieVideosUseCase.execute(Param.movieVideo(movieId));

    result.when(
      success: (videos) {
        _state = state.copyWith(videos: videos);
      },
      error: (message) {},
    );
  }

  Future<void> callMovieVideo() async {
    //todo: 수정 필요

    final Uri url = Uri.parse(youtubeUrl + state.videos[0].key);

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
