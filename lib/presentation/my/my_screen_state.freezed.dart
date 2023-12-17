// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyScreenState _$MyScreenStateFromJson(Map<String, dynamic> json) {
  return _MyScreenState.fromJson(json);
}

/// @nodoc
mixin _$MyScreenState {
  MovieDetail? get movieDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyScreenStateCopyWith<MyScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyScreenStateCopyWith<$Res> {
  factory $MyScreenStateCopyWith(
          MyScreenState value, $Res Function(MyScreenState) then) =
      _$MyScreenStateCopyWithImpl<$Res, MyScreenState>;
  @useResult
  $Res call({MovieDetail? movieDetails});

  $MovieDetailCopyWith<$Res>? get movieDetails;
}

/// @nodoc
class _$MyScreenStateCopyWithImpl<$Res, $Val extends MyScreenState>
    implements $MyScreenStateCopyWith<$Res> {
  _$MyScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetails = freezed,
  }) {
    return _then(_value.copyWith(
      movieDetails: freezed == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetail?,
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
}

/// @nodoc
abstract class _$$_MyScreenStateCopyWith<$Res>
    implements $MyScreenStateCopyWith<$Res> {
  factory _$$_MyScreenStateCopyWith(
          _$_MyScreenState value, $Res Function(_$_MyScreenState) then) =
      __$$_MyScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MovieDetail? movieDetails});

  @override
  $MovieDetailCopyWith<$Res>? get movieDetails;
}

/// @nodoc
class __$$_MyScreenStateCopyWithImpl<$Res>
    extends _$MyScreenStateCopyWithImpl<$Res, _$_MyScreenState>
    implements _$$_MyScreenStateCopyWith<$Res> {
  __$$_MyScreenStateCopyWithImpl(
      _$_MyScreenState _value, $Res Function(_$_MyScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetails = freezed,
  }) {
    return _then(_$_MyScreenState(
      movieDetails: freezed == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyScreenState implements _MyScreenState {
  const _$_MyScreenState({this.movieDetails = null});

  factory _$_MyScreenState.fromJson(Map<String, dynamic> json) =>
      _$$_MyScreenStateFromJson(json);

  @override
  @JsonKey()
  final MovieDetail? movieDetails;

  @override
  String toString() {
    return 'MyScreenState(movieDetails: $movieDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyScreenState &&
            (identical(other.movieDetails, movieDetails) ||
                other.movieDetails == movieDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, movieDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyScreenStateCopyWith<_$_MyScreenState> get copyWith =>
      __$$_MyScreenStateCopyWithImpl<_$_MyScreenState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyScreenStateToJson(
      this,
    );
  }
}

abstract class _MyScreenState implements MyScreenState {
  const factory _MyScreenState({final MovieDetail? movieDetails}) =
      _$_MyScreenState;

  factory _MyScreenState.fromJson(Map<String, dynamic> json) =
      _$_MyScreenState.fromJson;

  @override
  MovieDetail? get movieDetails;
  @override
  @JsonKey(ignore: true)
  _$$_MyScreenStateCopyWith<_$_MyScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
