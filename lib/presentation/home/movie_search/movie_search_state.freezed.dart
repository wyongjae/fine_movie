// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieSearchState _$MovieSearchStateFromJson(Map<String, dynamic> json) {
  return _MovieSearchState.fromJson(json);
}

/// @nodoc
mixin _$MovieSearchState {
  List<Movie> get searchedMovies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieSearchStateCopyWith<MovieSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSearchStateCopyWith<$Res> {
  factory $MovieSearchStateCopyWith(
          MovieSearchState value, $Res Function(MovieSearchState) then) =
      _$MovieSearchStateCopyWithImpl<$Res, MovieSearchState>;
  @useResult
  $Res call({List<Movie> searchedMovies});
}

/// @nodoc
class _$MovieSearchStateCopyWithImpl<$Res, $Val extends MovieSearchState>
    implements $MovieSearchStateCopyWith<$Res> {
  _$MovieSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchedMovies = null,
  }) {
    return _then(_value.copyWith(
      searchedMovies: null == searchedMovies
          ? _value.searchedMovies
          : searchedMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieSearchStateCopyWith<$Res>
    implements $MovieSearchStateCopyWith<$Res> {
  factory _$$_MovieSearchStateCopyWith(
          _$_MovieSearchState value, $Res Function(_$_MovieSearchState) then) =
      __$$_MovieSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Movie> searchedMovies});
}

/// @nodoc
class __$$_MovieSearchStateCopyWithImpl<$Res>
    extends _$MovieSearchStateCopyWithImpl<$Res, _$_MovieSearchState>
    implements _$$_MovieSearchStateCopyWith<$Res> {
  __$$_MovieSearchStateCopyWithImpl(
      _$_MovieSearchState _value, $Res Function(_$_MovieSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchedMovies = null,
  }) {
    return _then(_$_MovieSearchState(
      searchedMovies: null == searchedMovies
          ? _value._searchedMovies
          : searchedMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieSearchState implements _MovieSearchState {
  const _$_MovieSearchState({final List<Movie> searchedMovies = const []})
      : _searchedMovies = searchedMovies;

  factory _$_MovieSearchState.fromJson(Map<String, dynamic> json) =>
      _$$_MovieSearchStateFromJson(json);

  final List<Movie> _searchedMovies;
  @override
  @JsonKey()
  List<Movie> get searchedMovies {
    if (_searchedMovies is EqualUnmodifiableListView) return _searchedMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedMovies);
  }

  @override
  String toString() {
    return 'MovieSearchState(searchedMovies: $searchedMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieSearchState &&
            const DeepCollectionEquality()
                .equals(other._searchedMovies, _searchedMovies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchedMovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieSearchStateCopyWith<_$_MovieSearchState> get copyWith =>
      __$$_MovieSearchStateCopyWithImpl<_$_MovieSearchState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieSearchStateToJson(
      this,
    );
  }
}

abstract class _MovieSearchState implements MovieSearchState {
  const factory _MovieSearchState({final List<Movie> searchedMovies}) =
      _$_MovieSearchState;

  factory _MovieSearchState.fromJson(Map<String, dynamic> json) =
      _$_MovieSearchState.fromJson;

  @override
  List<Movie> get searchedMovies;
  @override
  @JsonKey(ignore: true)
  _$$_MovieSearchStateCopyWith<_$_MovieSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
