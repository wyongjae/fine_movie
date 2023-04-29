// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailState _$MovieDetailStateFromJson(Map<String, dynamic> json) {
  return _MovieDetailState.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  MovieDetail? get movieDetails => throw _privateConstructorUsedError;
  List<Video> get videos => throw _privateConstructorUsedError;
  Credits? get credits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res, MovieDetailState>;
  @useResult
  $Res call(
      {bool isLoading,
      MovieDetail? movieDetails,
      List<Video> videos,
      Credits? credits});

  $MovieDetailCopyWith<$Res>? get movieDetails;
  $CreditsCopyWith<$Res>? get credits;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res, $Val extends MovieDetailState>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? movieDetails = freezed,
    Object? videos = null,
    Object? credits = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movieDetails: freezed == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetail?,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as Credits?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieDetailCopyWith<$Res>? get movieDetails {
    if (_value.movieDetails == null) {
      return null;
    }

    return $MovieDetailCopyWith<$Res>(_value.movieDetails!, (value) {
      return _then(_value.copyWith(movieDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditsCopyWith<$Res>? get credits {
    if (_value.credits == null) {
      return null;
    }

    return $CreditsCopyWith<$Res>(_value.credits!, (value) {
      return _then(_value.copyWith(credits: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieDetailStateCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$$_MovieDetailStateCopyWith(
          _$_MovieDetailState value, $Res Function(_$_MovieDetailState) then) =
      __$$_MovieDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      MovieDetail? movieDetails,
      List<Video> videos,
      Credits? credits});

  @override
  $MovieDetailCopyWith<$Res>? get movieDetails;
  @override
  $CreditsCopyWith<$Res>? get credits;
}

/// @nodoc
class __$$_MovieDetailStateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$_MovieDetailState>
    implements _$$_MovieDetailStateCopyWith<$Res> {
  __$$_MovieDetailStateCopyWithImpl(
      _$_MovieDetailState _value, $Res Function(_$_MovieDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? movieDetails = freezed,
    Object? videos = null,
    Object? credits = freezed,
  }) {
    return _then(_$_MovieDetailState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movieDetails: freezed == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetail?,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as Credits?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailState implements _MovieDetailState {
  const _$_MovieDetailState(
      {this.isLoading = false,
      this.movieDetails = null,
      final List<Video> videos = const [],
      this.credits = null})
      : _videos = videos;

  factory _$_MovieDetailState.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailStateFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final MovieDetail? movieDetails;
  final List<Video> _videos;
  @override
  @JsonKey()
  List<Video> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  @JsonKey()
  final Credits? credits;

  @override
  String toString() {
    return 'MovieDetailState(isLoading: $isLoading, movieDetails: $movieDetails, videos: $videos, credits: $credits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.movieDetails, movieDetails) ||
                other.movieDetails == movieDetails) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, movieDetails,
      const DeepCollectionEquality().hash(_videos), credits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailStateCopyWith<_$_MovieDetailState> get copyWith =>
      __$$_MovieDetailStateCopyWithImpl<_$_MovieDetailState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailStateToJson(
      this,
    );
  }
}

abstract class _MovieDetailState implements MovieDetailState {
  const factory _MovieDetailState(
      {final bool isLoading,
      final MovieDetail? movieDetails,
      final List<Video> videos,
      final Credits? credits}) = _$_MovieDetailState;

  factory _MovieDetailState.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailState.fromJson;

  @override
  bool get isLoading;
  @override
  MovieDetail? get movieDetails;
  @override
  List<Video> get videos;
  @override
  Credits? get credits;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailStateCopyWith<_$_MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
