// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_search_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieSearchState _$$_MovieSearchStateFromJson(Map<String, dynamic> json) =>
    _$_MovieSearchState(
      searchedMovies: (json['searchedMovies'] as List<dynamic>?)
              ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MovieSearchStateToJson(_$_MovieSearchState instance) =>
    <String, dynamic>{
      'searchedMovies': instance.searchedMovies,
    };
