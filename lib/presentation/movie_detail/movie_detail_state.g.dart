// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetailState _$$_MovieDetailStateFromJson(Map<String, dynamic> json) =>
    _$_MovieDetailState(
      isLoading: json['isLoading'] as bool? ?? false,
      movieDetails: json['movieDetails'] == null
          ? null
          : MovieDetail.fromJson(json['movieDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MovieDetailStateToJson(_$_MovieDetailState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'movieDetails': instance.movieDetails,
    };
