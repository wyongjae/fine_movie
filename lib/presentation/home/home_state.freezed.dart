// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Movie> get topRatedMovie => throw _privateConstructorUsedError;
  List<Movie> get popularMovie => throw _privateConstructorUsedError;
  List<Movie> get nowPlayingMovie => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Movie> topRatedMovie,
      List<Movie> popularMovie,
      List<Movie> nowPlayingMovie});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? topRatedMovie = null,
    Object? popularMovie = null,
    Object? nowPlayingMovie = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      topRatedMovie: null == topRatedMovie
          ? _value.topRatedMovie
          : topRatedMovie // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      popularMovie: null == popularMovie
          ? _value.popularMovie
          : popularMovie // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      nowPlayingMovie: null == nowPlayingMovie
          ? _value.nowPlayingMovie
          : nowPlayingMovie // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Movie> topRatedMovie,
      List<Movie> popularMovie,
      List<Movie> nowPlayingMovie});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? topRatedMovie = null,
    Object? popularMovie = null,
    Object? nowPlayingMovie = null,
  }) {
    return _then(_$_HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      topRatedMovie: null == topRatedMovie
          ? _value._topRatedMovie
          : topRatedMovie // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      popularMovie: null == popularMovie
          ? _value._popularMovie
          : popularMovie // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      nowPlayingMovie: null == nowPlayingMovie
          ? _value._nowPlayingMovie
          : nowPlayingMovie // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.isLoading = false,
      final List<Movie> topRatedMovie = const [],
      final List<Movie> popularMovie = const [],
      final List<Movie> nowPlayingMovie = const []})
      : _topRatedMovie = topRatedMovie,
        _popularMovie = popularMovie,
        _nowPlayingMovie = nowPlayingMovie;

  factory _$_HomeState.fromJson(Map<String, dynamic> json) =>
      _$$_HomeStateFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<Movie> _topRatedMovie;
  @override
  @JsonKey()
  List<Movie> get topRatedMovie {
    if (_topRatedMovie is EqualUnmodifiableListView) return _topRatedMovie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRatedMovie);
  }

  final List<Movie> _popularMovie;
  @override
  @JsonKey()
  List<Movie> get popularMovie {
    if (_popularMovie is EqualUnmodifiableListView) return _popularMovie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMovie);
  }

  final List<Movie> _nowPlayingMovie;
  @override
  @JsonKey()
  List<Movie> get nowPlayingMovie {
    if (_nowPlayingMovie is EqualUnmodifiableListView) return _nowPlayingMovie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowPlayingMovie);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, topRatedMovie: $topRatedMovie, popularMovie: $popularMovie, nowPlayingMovie: $nowPlayingMovie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._topRatedMovie, _topRatedMovie) &&
            const DeepCollectionEquality()
                .equals(other._popularMovie, _popularMovie) &&
            const DeepCollectionEquality()
                .equals(other._nowPlayingMovie, _nowPlayingMovie));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_topRatedMovie),
      const DeepCollectionEquality().hash(_popularMovie),
      const DeepCollectionEquality().hash(_nowPlayingMovie));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeStateToJson(
      this,
    );
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool isLoading,
      final List<Movie> topRatedMovie,
      final List<Movie> popularMovie,
      final List<Movie> nowPlayingMovie}) = _$_HomeState;

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$_HomeState.fromJson;

  @override
  bool get isLoading;
  @override
  List<Movie> get topRatedMovie;
  @override
  List<Movie> get popularMovie;
  @override
  List<Movie> get nowPlayingMovie;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
