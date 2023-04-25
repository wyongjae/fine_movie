import 'package:freezed_annotation/freezed_annotation.dart';

part 'crew.freezed.dart';

part 'crew.g.dart';

@freezed
class Crew with _$Crew {
  const factory Crew({
    required bool adult,
    required int gender,
    required int id,
    @JsonKey(name: 'known_for_department') required String knownForDepartment,
    required String name,
    @JsonKey(name: 'original_name') required String originalName,
    required num popularity,
    @JsonKey(name: 'profile_path') required String? profilePath,
    @JsonKey(name: 'credit_id') required String creditId,
    required String department,
    required String job,
  }) = _Crew;

  factory Crew.fromJson(Map<String, Object?> json) => _$CrewFromJson(json);
}
