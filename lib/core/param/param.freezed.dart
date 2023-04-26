// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Param {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) movieNowPlaying,
    required TResult Function(int page) moviePopular,
    required TResult Function(int page) movieUpcoming,
    required TResult Function(int page) movieTopRated,
    required TResult Function() genres,
    required TResult Function(int movieId) movieDetail,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? movieNowPlaying,
    TResult? Function(int page)? moviePopular,
    TResult? Function(int page)? movieUpcoming,
    TResult? Function(int page)? movieTopRated,
    TResult? Function()? genres,
    TResult? Function(int movieId)? movieDetail,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? movieNowPlaying,
    TResult Function(int page)? moviePopular,
    TResult Function(int page)? movieUpcoming,
    TResult Function(int page)? movieTopRated,
    TResult Function()? genres,
    TResult Function(int movieId)? movieDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieNowPlaying value) movieNowPlaying,
    required TResult Function(MoviePopular value) moviePopular,
    required TResult Function(MoviePopular value) movieUpcoming,
    required TResult Function(MovieTopRated value) movieTopRated,
    required TResult Function(Genres value) genres,
    required TResult Function(MovieDetailParam value) movieDetail,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieNowPlaying value)? movieNowPlaying,
    TResult? Function(MoviePopular value)? moviePopular,
    TResult? Function(MoviePopular value)? movieUpcoming,
    TResult? Function(MovieTopRated value)? movieTopRated,
    TResult? Function(Genres value)? genres,
    TResult? Function(MovieDetailParam value)? movieDetail,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieNowPlaying value)? movieNowPlaying,
    TResult Function(MoviePopular value)? moviePopular,
    TResult Function(MoviePopular value)? movieUpcoming,
    TResult Function(MovieTopRated value)? movieTopRated,
    TResult Function(Genres value)? genres,
    TResult Function(MovieDetailParam value)? movieDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamCopyWith<$Res> {
  factory $ParamCopyWith(Param value, $Res Function(Param) then) =
      _$ParamCopyWithImpl<$Res, Param>;
}

/// @nodoc
class _$ParamCopyWithImpl<$Res, $Val extends Param>
    implements $ParamCopyWith<$Res> {
  _$ParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovieNowPlayingCopyWith<$Res> {
  factory _$$MovieNowPlayingCopyWith(
          _$MovieNowPlaying value, $Res Function(_$MovieNowPlaying) then) =
      __$$MovieNowPlayingCopyWithImpl<$Res>;

  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$MovieNowPlayingCopyWithImpl<$Res>
    extends _$ParamCopyWithImpl<$Res, _$MovieNowPlaying>
    implements _$$MovieNowPlayingCopyWith<$Res> {
  __$$MovieNowPlayingCopyWithImpl(
      _$MovieNowPlaying _value, $Res Function(_$MovieNowPlaying) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$MovieNowPlaying(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MovieNowPlaying implements MovieNowPlaying {
  const _$MovieNowPlaying({this.page = 1});

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'Param.movieNowPlaying(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieNowPlaying &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieNowPlayingCopyWith<_$MovieNowPlaying> get copyWith =>
      __$$MovieNowPlayingCopyWithImpl<_$MovieNowPlaying>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) movieNowPlaying,
    required TResult Function(int page) moviePopular,
    required TResult Function(int page) movieUpcoming,
    required TResult Function(int page) movieTopRated,
    required TResult Function() genres,
    required TResult Function(int movieId) movieDetail,
  }) {
    return movieNowPlaying(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? movieNowPlaying,
    TResult? Function(int page)? moviePopular,
    TResult? Function(int page)? movieUpcoming,
    TResult? Function(int page)? movieTopRated,
    TResult? Function()? genres,
    TResult? Function(int movieId)? movieDetail,
  }) {
    return movieNowPlaying?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? movieNowPlaying,
    TResult Function(int page)? moviePopular,
    TResult Function(int page)? movieUpcoming,
    TResult Function(int page)? movieTopRated,
    TResult Function()? genres,
    TResult Function(int movieId)? movieDetail,
    required TResult orElse(),
  }) {
    if (movieNowPlaying != null) {
      return movieNowPlaying(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieNowPlaying value) movieNowPlaying,
    required TResult Function(MoviePopular value) moviePopular,
    required TResult Function(MoviePopular value) movieUpcoming,
    required TResult Function(MovieTopRated value) movieTopRated,
    required TResult Function(Genres value) genres,
    required TResult Function(MovieDetailParam value) movieDetail,
  }) {
    return movieNowPlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieNowPlaying value)? movieNowPlaying,
    TResult? Function(MoviePopular value)? moviePopular,
    TResult? Function(MoviePopular value)? movieUpcoming,
    TResult? Function(MovieTopRated value)? movieTopRated,
    TResult? Function(Genres value)? genres,
    TResult? Function(MovieDetailParam value)? movieDetail,
  }) {
    return movieNowPlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieNowPlaying value)? movieNowPlaying,
    TResult Function(MoviePopular value)? moviePopular,
    TResult Function(MoviePopular value)? movieUpcoming,
    TResult Function(MovieTopRated value)? movieTopRated,
    TResult Function(Genres value)? genres,
    TResult Function(MovieDetailParam value)? movieDetail,
    required TResult orElse(),
  }) {
    if (movieNowPlaying != null) {
      return movieNowPlaying(this);
    }
    return orElse();
  }
}

abstract class MovieNowPlaying implements Param {
  const factory MovieNowPlaying({final int page}) = _$MovieNowPlaying;

  int get page;

  @JsonKey(ignore: true)
  _$$MovieNowPlayingCopyWith<_$MovieNowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoviePopularCopyWith<$Res> {
  factory _$$MoviePopularCopyWith(
          _$MoviePopular value, $Res Function(_$MoviePopular) then) =
      __$$MoviePopularCopyWithImpl<$Res>;

  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$MoviePopularCopyWithImpl<$Res>
    extends _$ParamCopyWithImpl<$Res, _$MoviePopular>
    implements _$$MoviePopularCopyWith<$Res> {
  __$$MoviePopularCopyWithImpl(
      _$MoviePopular _value, $Res Function(_$MoviePopular) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$MoviePopular(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MoviePopular implements MoviePopular {
  const _$MoviePopular({this.page = 1});

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'Param.moviePopular(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviePopular &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviePopularCopyWith<_$MoviePopular> get copyWith =>
      __$$MoviePopularCopyWithImpl<_$MoviePopular>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) movieNowPlaying,
    required TResult Function(int page) moviePopular,
    required TResult Function(int page) movieUpcoming,
    required TResult Function(int page) movieTopRated,
    required TResult Function() genres,
    required TResult Function(int movieId) movieDetail,
  }) {
    return moviePopular(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? movieNowPlaying,
    TResult? Function(int page)? moviePopular,
    TResult? Function(int page)? movieUpcoming,
    TResult? Function(int page)? movieTopRated,
    TResult? Function()? genres,
    TResult? Function(int movieId)? movieDetail,
  }) {
    return moviePopular?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? movieNowPlaying,
    TResult Function(int page)? moviePopular,
    TResult Function(int page)? movieUpcoming,
    TResult Function(int page)? movieTopRated,
    TResult Function()? genres,
    TResult Function(int movieId)? movieDetail,
    required TResult orElse(),
  }) {
    if (moviePopular != null) {
      return moviePopular(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieNowPlaying value) movieNowPlaying,
    required TResult Function(MoviePopular value) moviePopular,
    required TResult Function(MoviePopular value) movieUpcoming,
    required TResult Function(MovieTopRated value) movieTopRated,
    required TResult Function(Genres value) genres,
    required TResult Function(MovieDetailParam value) movieDetail,
  }) {
    return moviePopular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieNowPlaying value)? movieNowPlaying,
    TResult? Function(MoviePopular value)? moviePopular,
    TResult? Function(MoviePopular value)? movieUpcoming,
    TResult? Function(MovieTopRated value)? movieTopRated,
    TResult? Function(Genres value)? genres,
    TResult? Function(MovieDetailParam value)? movieDetail,
  }) {
    return moviePopular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieNowPlaying value)? movieNowPlaying,
    TResult Function(MoviePopular value)? moviePopular,
    TResult Function(MoviePopular value)? movieUpcoming,
    TResult Function(MovieTopRated value)? movieTopRated,
    TResult Function(Genres value)? genres,
    TResult Function(MovieDetailParam value)? movieDetail,
    required TResult orElse(),
  }) {
    if (moviePopular != null) {
      return moviePopular(this);
    }
    return orElse();
  }
}

abstract class MoviePopular implements Param {
  const factory MoviePopular({final int page}) = _$MoviePopular;

  int get page;

  @JsonKey(ignore: true)
  _$$MoviePopularCopyWith<_$MoviePopular> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieTopRatedCopyWith<$Res> {
  factory _$$MovieTopRatedCopyWith(
          _$MovieTopRated value, $Res Function(_$MovieTopRated) then) =
      __$$MovieTopRatedCopyWithImpl<$Res>;

  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$MovieTopRatedCopyWithImpl<$Res>
    extends _$ParamCopyWithImpl<$Res, _$MovieTopRated>
    implements _$$MovieTopRatedCopyWith<$Res> {
  __$$MovieTopRatedCopyWithImpl(
      _$MovieTopRated _value, $Res Function(_$MovieTopRated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$MovieTopRated(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MovieTopRated implements MovieTopRated {
  const _$MovieTopRated({this.page = 1});

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'Param.movieTopRated(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieTopRated &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieTopRatedCopyWith<_$MovieTopRated> get copyWith =>
      __$$MovieTopRatedCopyWithImpl<_$MovieTopRated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) movieNowPlaying,
    required TResult Function(int page) moviePopular,
    required TResult Function(int page) movieUpcoming,
    required TResult Function(int page) movieTopRated,
    required TResult Function() genres,
    required TResult Function(int movieId) movieDetail,
  }) {
    return movieTopRated(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? movieNowPlaying,
    TResult? Function(int page)? moviePopular,
    TResult? Function(int page)? movieUpcoming,
    TResult? Function(int page)? movieTopRated,
    TResult? Function()? genres,
    TResult? Function(int movieId)? movieDetail,
  }) {
    return movieTopRated?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? movieNowPlaying,
    TResult Function(int page)? moviePopular,
    TResult Function(int page)? movieUpcoming,
    TResult Function(int page)? movieTopRated,
    TResult Function()? genres,
    TResult Function(int movieId)? movieDetail,
    required TResult orElse(),
  }) {
    if (movieTopRated != null) {
      return movieTopRated(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieNowPlaying value) movieNowPlaying,
    required TResult Function(MoviePopular value) moviePopular,
    required TResult Function(MoviePopular value) movieUpcoming,
    required TResult Function(MovieTopRated value) movieTopRated,
    required TResult Function(Genres value) genres,
    required TResult Function(MovieDetailParam value) movieDetail,
  }) {
    return movieTopRated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieNowPlaying value)? movieNowPlaying,
    TResult? Function(MoviePopular value)? moviePopular,
    TResult? Function(MoviePopular value)? movieUpcoming,
    TResult? Function(MovieTopRated value)? movieTopRated,
    TResult? Function(Genres value)? genres,
    TResult? Function(MovieDetailParam value)? movieDetail,
  }) {
    return movieTopRated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieNowPlaying value)? movieNowPlaying,
    TResult Function(MoviePopular value)? moviePopular,
    TResult Function(MoviePopular value)? movieUpcoming,
    TResult Function(MovieTopRated value)? movieTopRated,
    TResult Function(Genres value)? genres,
    TResult Function(MovieDetailParam value)? movieDetail,
    required TResult orElse(),
  }) {
    if (movieTopRated != null) {
      return movieTopRated(this);
    }
    return orElse();
  }
}

abstract class MovieTopRated implements Param {
  const factory MovieTopRated({final int page}) = _$MovieTopRated;

  int get page;

  @JsonKey(ignore: true)
  _$$MovieTopRatedCopyWith<_$MovieTopRated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenresCopyWith<$Res> {
  factory _$$GenresCopyWith(_$Genres value, $Res Function(_$Genres) then) =
      __$$GenresCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenresCopyWithImpl<$Res> extends _$ParamCopyWithImpl<$Res, _$Genres>
    implements _$$GenresCopyWith<$Res> {
  __$$GenresCopyWithImpl(_$Genres _value, $Res Function(_$Genres) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Genres implements Genres {
  const _$Genres();

  @override
  String toString() {
    return 'Param.genres()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Genres);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) movieNowPlaying,
    required TResult Function(int page) moviePopular,
    required TResult Function(int page) movieUpcoming,
    required TResult Function(int page) movieTopRated,
    required TResult Function() genres,
    required TResult Function(int movieId) movieDetail,
  }) {
    return genres();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? movieNowPlaying,
    TResult? Function(int page)? moviePopular,
    TResult? Function(int page)? movieUpcoming,
    TResult? Function(int page)? movieTopRated,
    TResult? Function()? genres,
    TResult? Function(int movieId)? movieDetail,
  }) {
    return genres?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? movieNowPlaying,
    TResult Function(int page)? moviePopular,
    TResult Function(int page)? movieUpcoming,
    TResult Function(int page)? movieTopRated,
    TResult Function()? genres,
    TResult Function(int movieId)? movieDetail,
    required TResult orElse(),
  }) {
    if (genres != null) {
      return genres();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieNowPlaying value) movieNowPlaying,
    required TResult Function(MoviePopular value) moviePopular,
    required TResult Function(MoviePopular value) movieUpcoming,
    required TResult Function(MovieTopRated value) movieTopRated,
    required TResult Function(Genres value) genres,
    required TResult Function(MovieDetailParam value) movieDetail,
  }) {
    return genres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieNowPlaying value)? movieNowPlaying,
    TResult? Function(MoviePopular value)? moviePopular,
    TResult? Function(MoviePopular value)? movieUpcoming,
    TResult? Function(MovieTopRated value)? movieTopRated,
    TResult? Function(Genres value)? genres,
    TResult? Function(MovieDetailParam value)? movieDetail,
  }) {
    return genres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieNowPlaying value)? movieNowPlaying,
    TResult Function(MoviePopular value)? moviePopular,
    TResult Function(MoviePopular value)? movieUpcoming,
    TResult Function(MovieTopRated value)? movieTopRated,
    TResult Function(Genres value)? genres,
    TResult Function(MovieDetailParam value)? movieDetail,
    required TResult orElse(),
  }) {
    if (genres != null) {
      return genres(this);
    }
    return orElse();
  }
}

abstract class Genres implements Param {
  const factory Genres() = _$Genres;
}

/// @nodoc
abstract class _$$MovieDetailParamCopyWith<$Res> {
  factory _$$MovieDetailParamCopyWith(
          _$MovieDetailParam value, $Res Function(_$MovieDetailParam) then) =
      __$$MovieDetailParamCopyWithImpl<$Res>;

  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$MovieDetailParamCopyWithImpl<$Res>
    extends _$ParamCopyWithImpl<$Res, _$MovieDetailParam>
    implements _$$MovieDetailParamCopyWith<$Res> {
  __$$MovieDetailParamCopyWithImpl(
      _$MovieDetailParam _value, $Res Function(_$MovieDetailParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$MovieDetailParam(
      null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MovieDetailParam implements MovieDetailParam {
  const _$MovieDetailParam(this.movieId);

  @override
  final int movieId;

  @override
  String toString() {
    return 'Param.movieDetail(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailParam &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailParamCopyWith<_$MovieDetailParam> get copyWith =>
      __$$MovieDetailParamCopyWithImpl<_$MovieDetailParam>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) movieNowPlaying,
    required TResult Function(int page) moviePopular,
    required TResult Function(int page) movieUpcoming,
    required TResult Function(int page) movieTopRated,
    required TResult Function() genres,
    required TResult Function(int movieId) movieDetail,
  }) {
    return movieDetail(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? movieNowPlaying,
    TResult? Function(int page)? moviePopular,
    TResult? Function(int page)? movieUpcoming,
    TResult? Function(int page)? movieTopRated,
    TResult? Function()? genres,
    TResult? Function(int movieId)? movieDetail,
  }) {
    return movieDetail?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? movieNowPlaying,
    TResult Function(int page)? moviePopular,
    TResult Function(int page)? movieUpcoming,
    TResult Function(int page)? movieTopRated,
    TResult Function()? genres,
    TResult Function(int movieId)? movieDetail,
    required TResult orElse(),
  }) {
    if (movieDetail != null) {
      return movieDetail(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieNowPlaying value) movieNowPlaying,
    required TResult Function(MoviePopular value) moviePopular,
    required TResult Function(MoviePopular value) movieUpcoming,
    required TResult Function(MovieTopRated value) movieTopRated,
    required TResult Function(Genres value) genres,
    required TResult Function(MovieDetailParam value) movieDetail,
  }) {
    return movieDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieNowPlaying value)? movieNowPlaying,
    TResult? Function(MoviePopular value)? moviePopular,
    TResult? Function(MoviePopular value)? movieUpcoming,
    TResult? Function(MovieTopRated value)? movieTopRated,
    TResult? Function(Genres value)? genres,
    TResult? Function(MovieDetailParam value)? movieDetail,
  }) {
    return movieDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieNowPlaying value)? movieNowPlaying,
    TResult Function(MoviePopular value)? moviePopular,
    TResult Function(MoviePopular value)? movieUpcoming,
    TResult Function(MovieTopRated value)? movieTopRated,
    TResult Function(Genres value)? genres,
    TResult Function(MovieDetailParam value)? movieDetail,
    required TResult orElse(),
  }) {
    if (movieDetail != null) {
      return movieDetail(this);
    }
    return orElse();
  }
}

abstract class MovieDetailParam implements Param {
  const factory MovieDetailParam(final int movieId) = _$MovieDetailParam;

  int get movieId;

  @JsonKey(ignore: true)
  _$$MovieDetailParamCopyWith<_$MovieDetailParam> get copyWith =>
      throw _privateConstructorUsedError;
}
