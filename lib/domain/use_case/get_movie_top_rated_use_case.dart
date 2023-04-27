import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/domain/use_case/use_case.dart';
import 'package:fine_movie/util/result/result.dart';

class GetMovieTopRatedUseCase implements UseCase<List<Movie>, Param> {
  final MovieDataRepository<List<Movie>, Param> _repository;

  GetMovieTopRatedUseCase(this._repository);

  @override
  Future<Result<List<Movie>>> execute(Param param) async {
    final result = await _repository.fetch(param);

    return result.when(
      success: (movie) {
        return Result.success(movie);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
