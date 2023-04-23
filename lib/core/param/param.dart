import 'package:fine_movie/util/constant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'param.freezed.dart';

@freezed
class Param with _$Param {
  const factory Param.movieNowPlaying({@Default(1) int page}) = MovieNowPlaying;

  const factory Param.moviePopular({@Default(1) int page}) = MoviePopular;

  const factory Param.movieUpcoming({@Default(1) int page}) = MoviePopular;

  const factory Param.movieTopRated({@Default(1) int page}) = MovieTopRated;
}

String paramToUrl(Param param, String language) {
  return param.when(
    movieNowPlaying: (int page) =>
        '$movieBaseUrl/now_playing?api_key=$myKey&language=$language&page=$page',
    moviePopular: (int page) =>
        '$movieBaseUrl/popular?api_key=$myKey&language=$language&page=$page',
    movieUpcoming: (int page) =>
        '$movieBaseUrl/upcoming?api_key=$myKey&language=$language&page=$page',
    movieTopRated: (int page) =>
        '$movieBaseUrl/top_rated?api_key=$myKey&language=$language&page=$page',
  );
}