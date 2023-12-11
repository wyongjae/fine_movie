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
}
