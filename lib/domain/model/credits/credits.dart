import 'package:fine_movie/domain/model/credits/cast/cast.dart';
import 'package:fine_movie/domain/model/credits/crew/crew.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credits.freezed.dart';

part 'credits.g.dart';

@freezed
class Credits with _$Credits {
  const factory Credits({
    required int id,
    required List<Cast> cast,
    required List<Crew> crew,
  }) = _Credits;

  factory Credits.fromJson(Map<String, Object?> json) => _$CreditsFromJson(json);
}