import 'package:http/http.dart' as http;

const baseUrl = 'api.themoviedb.org/3';
const myKey = '9e4305db0fbbbd0bfed63f531773bd30';

class TopRatedMovieApi {
  final http.Client _client;

  TopRatedMovieApi({http.Client? client}) : _client = (client ?? http.Client());

  Future<http.Response> fetch() async {
    final url = Uri.parse(
        'https://$baseUrl/movie/top_rated?api_key=$myKey&language=ko-KO&page=1');
    final response = await _client.get(url);

    return response;
  }
}
