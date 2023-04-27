import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default([]) List<Movie> topRatedMovie,
    @Default([]) List<Movie> popularMovie,
    @Default([]) List<Movie> nowPlayingMovie,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, Object?> json) =>
      _$HomeStateFromJson(json);
}
