import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/model/credits/credits.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/domain/use_case/use_case.dart';
import 'package:fine_movie/util/result/result.dart';

class GetMovieCreditsUseCase implements UseCase<Credits, Param> {
  final MovieDataRepository<Credits, Param> _repository;

  GetMovieCreditsUseCase(this._repository);

  @override
  Future<Result<Credits>> execute(Param param) async {
    final result = await _repository.fetch(param);

    return result.when(
      success: (credits) {
        return Result.success(credits);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
