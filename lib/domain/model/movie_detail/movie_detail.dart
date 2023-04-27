import 'package:fine_movie/domain/model/collection/collection.dart';
import 'package:fine_movie/domain/model/genre/genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail.freezed.dart';

part 'movie_detail.g.dart';

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    required bool adult,
    @JsonKey(name: 'backdrop_path') required String? backdropPath,
    @JsonKey(name: 'belongs_to_collection')
        required Collection? belongsToCollection,
    required int budget,
    required List<Genre> genres,
    required String? homepage,
    required int id,
    @JsonKey(name: 'imdb_id') required String? imdbId,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String? overview,
    required double popularity,
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    required int revenue,
    required int? runtime,
    required String status,
    required String? tagline,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _MovieDetail;

  factory MovieDetail.fromJson(Map<String, Object?> json) =>
      _$MovieDetailFromJson(json);
}
