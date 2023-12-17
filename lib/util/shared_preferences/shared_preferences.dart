import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  static Future<bool> getLikeStatus(int movieId) async {
    final SharedPreferences prefs = await getPrefs();
    return prefs.getBool('like_$movieId') ?? false;
  }

  static Future<void> setLikeStatus(int movieId, bool like) async {
    final SharedPreferences prefs = await getPrefs();
    await prefs.setBool('like_$movieId', like);
  }

  // 좋아요를 누른 영화 id 추가
  static Future<void> addLikedMovieId(int movieId) async {
    print('Adding movieId to likedMovieIds: $movieId');

    final SharedPreferences prefs = await getPrefs();
    final Set<int> likedMovieIds = prefs
            .getStringList('likedMovieIds')
            ?.map((id) => int.parse(id))
            .toSet() ??
        {};
    likedMovieIds.add(movieId);
    await prefs.setStringList(
        'likedMovieIds', likedMovieIds.map((id) => id.toString()).toList());
  }

  // 좋아요를 취소한 영화 id 제거
  static Future<void> removeLikedMovieId(int movieId) async {
    print('Removing movieId from likedMovieIds: $movieId');

    final SharedPreferences prefs = await getPrefs();
    final Set<int> likedMovieIds = prefs
            .getStringList('likedMovieIds')
            ?.map((id) => int.parse(id))
            .toSet() ??
        {};
    likedMovieIds.remove(movieId);
    await prefs.setStringList(
        'likedMovieIds', likedMovieIds.map((id) => id.toString()).toList());
  }

  // 좋아요를 누른 영화 id 목록 가져오기
  static Future<Set<int>> getLikedMovieIds() async {
    final SharedPreferences prefs = await getPrefs();
    return prefs
            .getStringList('likedMovieIds')
            ?.map((id) => int.parse(id))
            .toSet() ??
        {};
  }
}
