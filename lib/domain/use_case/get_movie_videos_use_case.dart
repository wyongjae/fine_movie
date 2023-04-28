import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/model/video/video.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/domain/use_case/use_case.dart';
import 'package:fine_movie/util/result/result.dart';

class GetMovieVideosUseCase implements UseCase<List<Video>, Param> {
  final MovieDataRepository<List<Video>, Param> _repository;

  GetMovieVideosUseCase(this._repository);

  @override
  Future<Result<List<Video>>> execute(Param param) async {
    final result = await _repository.fetch(param);

    return result.when(
      success: (videos) {
        return Result.success(videos);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
