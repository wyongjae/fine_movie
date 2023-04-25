import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';

part 'cast.g.dart';

@freezed
class Cast with _$Cast {
  const factory Cast({
    required bool adult,
    required int gender,
    required int id,
    @JsonKey(name: 'known_for_department') required String knownForDepartment,
    required String name,
    @JsonKey(name: 'original_name') required String originalName,
    required num popularity,
    @JsonKey(name: 'profile_path') required String? profilePath,
    @JsonKey(name: 'cast_id') required int castId,
    required String character,
    @JsonKey(name: 'credit_id') required String creditId,
    required int order,
  }) = _Cast;

  factory Cast.fromJson(Map<String, Object?> json) => _$CastFromJson(json);
}
