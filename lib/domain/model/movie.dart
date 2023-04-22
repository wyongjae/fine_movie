import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String title,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'genre_ids') int? genreIds,
    int? id,
  }) = _Movie;

  factory Movie.fromJson(Map<String, Object?> json) => _$MovieFromJson(json);
}
