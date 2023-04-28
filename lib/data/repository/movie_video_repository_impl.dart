import 'dart:convert';

import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/data/data_source/movie_data_source.dart';
import 'package:fine_movie/domain/model/video/video.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/util/result/result.dart';

class MovieVideoRepositoryImpl
    implements MovieDataRepository<List<Video>, Param> {
  final MovieDataSource _movieDataSource;

  MovieVideoRepositoryImpl(this._movieDataSource);

  @override
  Future<Result<List<Video>>> fetch(Param param) async {
    try {
      final response = await _movieDataSource.fetch(param);

      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      List jsonResult = jsonResponse['results'];
      List<Video> videos = jsonResult.map((e) => Video.fromJson(e)).toList();

      final youtubeVideos = videos
          .where((element) => element.site == 'YouTube' && element.official)
          .toList();

      if (youtubeVideos.isEmpty) {
        return _fetchWithLanguage(param, 'en-US');
      }

      return Result.success(videos);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }

  Future<Result<List<Video>>> _fetchWithLanguage(
      Param param, String language) async {
    try {
      final response = await _movieDataSource.fetch(param, language: language);

      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      List jsonResult = jsonResponse['results'];
      List<Video> videos = jsonResult.map((e) => Video.fromJson(e)).toList();

      final youtubeVideos =
          videos.where((element) => element.site == 'YouTube').toList();

      return Result.success(youtubeVideos);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
