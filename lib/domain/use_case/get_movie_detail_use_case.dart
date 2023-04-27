import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/model/movie_detail/movie_detail.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/domain/use_case/use_case.dart';
import 'package:fine_movie/util/result/result.dart';

class GetMovieDetailUseCase implements UseCase<MovieDetail, Param> {
  final MovieDataRepository<MovieDetail, Param> _repository;

  GetMovieDetailUseCase(this._repository);

  @override
  Future<Result<MovieDetail>> execute(Param param) async {
    final result = await _repository.fetch(param);

    return result.when(success: (movieDetail) {
      return Result.success(movieDetail);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
