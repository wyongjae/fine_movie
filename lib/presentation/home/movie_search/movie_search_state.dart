import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_search_state.freezed.dart';

part 'movie_search_state.g.dart';

@freezed
class MovieSearchState with _$MovieSearchState {
  const factory MovieSearchState({
    @Default([]) List<Movie> searchedMovies,
  }) = _MovieSearchState;

  factory MovieSearchState.fromJson(Map<String, Object?> json) => _$MovieSearchStateFromJson(json);
}