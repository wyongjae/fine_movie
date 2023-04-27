import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/model/genre/genre.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/domain/use_case/use_case.dart';
import 'package:fine_movie/util/result/result.dart';

class GetGenreUseCase implements UseCase<List<Genre>, Param> {
  final MovieDataRepository<List<Genre>, Param> _repository;

  GetGenreUseCase(this._repository);

  @override
  Future<Result<List<Genre>>> execute(Param param) async {
    final result = await _repository.fetch(param);

    return result.when(
      success: (genre) {
        return Result.success(genre);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
