import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/domain/use_case/use_case.dart';
import 'package:fine_movie/util/result/result.dart';

class GetMoviePopularUseCase implements UseCase<List<Movie>, Param> {
  final MovieDataRepository<List<Movie>, Param> _repository;

  GetMoviePopularUseCase(this._repository);

  @override
  Future<Result<List<Movie>>> execute(Param param) async {
    final result = await _repository.fetch(param);

    return result.when(
      success: (popularMovies) {
        return Result.success(popularMovies);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
