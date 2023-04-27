import 'package:fine_movie/domain/model/movie_detail/movie_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_state.freezed.dart';

part 'movie_detail_state.g.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    @Default(false) bool isLoading,
    @Default(null) MovieDetail? movieDetail,
  }) = _MovieDetailState;

  factory MovieDetailState.fromJson(Map<String, Object?> json) =>
      _$MovieDetailStateFromJson(json);
}
