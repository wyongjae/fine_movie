import 'package:fine_movie/core/param/param.dart';
import 'package:http/http.dart' as http;

class MovieDataSource {
  final http.Client _client;

  MovieDataSource({http.Client? client}) : _client = (client ?? http.Client());

  Future<http.Response> fetch(Param param, {String language = 'ko-KR'}) async {
    final url = Uri.parse(paramToUrl(param, language));
    final response = await _client.get(url);

    return response;
  }
}
