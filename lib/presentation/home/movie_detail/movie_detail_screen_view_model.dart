import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/use_case/use_cases.dart';
import 'package:fine_movie/presentation/home/movie_detail/movie_detail_state.dart';
import 'package:fine_movie/util/constant.dart';
import 'package:fine_movie/util/shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailScreenViewModel with ChangeNotifier {
  final UseCases _useCases;
  int movieId;
  Future<bool>? isLiked;

  MovieDetailState _state = const MovieDetailState();

  MovieDetailState get state => _state;

  String? get cast => state.credits?.cast.take(2).map((e) => e.name).join(', ');

  String? get director => state.credits?.crew
      .where((element) => element.job == 'Director')
      .first
      .name;

  MovieDetailScreenViewModel(this._useCases, this.movieId);

  Future<void> fetch() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    await _getMovieDetail(movieId);
    await _getVideos(movieId);
    await _getCredits(movieId);
    await refreshLikeStatus(movieId);

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }

  Future<void> refreshLikeStatus(int movieId) async {
    final bool like = await SharedPreferencesService.getLikeStatus(movieId);
    isLiked = Future.value(like);

    notifyListeners();
  }

  Future<void> movieLike(int movieId) async {
    if (isLiked != null) {
      final bool currentLike = await isLiked!;
      await SharedPreferencesService.setLikeStatus(movieId, !currentLike);
      if (!currentLike) {
        await SharedPreferencesService.addLikedMovieId(movieId);
      } else {
        await SharedPreferencesService.removeLikedMovieId(movieId);
      }
      refreshLikeStatus(movieId);
    }
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

  Future<void> _getCredits(int movieId) async {
    final result =
        await _useCases.creditsUseCase.execute(Param.movieCredits(movieId));

    result.when(
      success: (credits) {
        _state = state.copyWith(credits: credits);
      },
      error: (message) {},
    );
  }

  Future<void> callMovieVideo() async {
    if (state.videos.isNotEmpty) {
      final Uri url = Uri.parse(youtubeUrl + state.videos.first.key);

      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }
  }
}
