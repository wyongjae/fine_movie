// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_screen_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyScreenState _$$_MyScreenStateFromJson(Map<String, dynamic> json) =>
    _$_MyScreenState(
      movieDetails: json['movieDetails'] == null
          ? null
          : MovieDetail.fromJson(json['movieDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MyScreenStateToJson(_$_MyScreenState instance) =>
    <String, dynamic>{
      'movieDetails': instance.movieDetails,
    };
