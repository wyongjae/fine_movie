import 'package:fine_movie/domain/model/movie_detail/movie_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_screen_state.freezed.dart';

part 'my_screen_state.g.dart';

@freezed
class MyScreenState with _$MyScreenState {
  const factory MyScreenState({
    @Default(null) MovieDetail? movieDetails,
  }) = _MyScreenState;

  factory MyScreenState.fromJson(Map<String, Object?> json) =>
      _$MyScreenStateFromJson(json);
}
