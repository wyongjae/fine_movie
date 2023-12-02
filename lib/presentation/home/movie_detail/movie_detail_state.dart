import 'package:fine_movie/domain/model/credits/credits.dart';
import 'package:fine_movie/domain/model/movie_detail/movie_detail.dart';
import 'package:fine_movie/domain/model/video/video.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_state.freezed.dart';

part 'movie_detail_state.g.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    @Default(false) bool isLoading,
    @Default(false) bool isLiked,
    @Default(null) MovieDetail? movieDetails,
    @Default([]) List<Video> videos,
    @Default(null) Credits? credits,
  }) = _MovieDetailState;

  factory MovieDetailState.fromJson(Map<String, Object?> json) =>
      _$MovieDetailStateFromJson(json);
}
